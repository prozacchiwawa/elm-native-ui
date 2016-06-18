module NativeUi.NativeApp exposing (Config, program)

{-|

@docs Config, program
-}

import Debug exposing (log)
import Dict exposing (Dict)
import Html exposing (Html, text)
import Html.App as HtmlApp
import Json.Decode
import Json.Encode
import List
import NativeUi as NUi
import Task exposing (Task)

type Action msg
  = NoOp
  | Paint
  | AppMsg msg
  | ReactEvent (String, Json.Decode.Value)

{-|
-}
type alias Config model msg =
  { init : (model, Cmd msg)
  , update : msg -> model -> (model, Cmd msg)
  , subscriptions : model -> Sub msg
  , view : model -> NUi.NativeUi msg
  , renderPort : Json.Encode.Value -> Cmd msg
  , eventPort : Sub (String, Json.Decode.Value)
  }

type alias NativeAppState model msg =
  { model : model
  , eventRouters : Dict String (Json.Decode.Decoder msg)
  }

getReactView vr =
  let getReactViewInner id vr =
    case vr of
      NUi.VNode nm props children ->
        let mapProperty sid p =
          case p of
            NUi.JsonProperty nm val ->
              Json.Encode.object
                [ "ctor" => (Json.Encode.string "JsonProperty")
                , "_0" => (Json.Encode.string nm)
                , "_1" => val
                ]
            NUi.EventHandler nm decoder ->
              Json.Encode.object
                [ "ctor" => (Json.Encode.string "EventHandler")
                , "_0" => (Json.Encode.string nm)
                , "_1" => (Json.Encode.string (id ++ "-" ++ (toString sid)))
                ]
        in
        let mapChildren cid c =
          let childId = id ++ "." ++ (toString cid) in
          getReactViewInner childId c
        in
        Json.Encode.object
          [ "ctor" => (Json.Encode.string "VNode")
          , "_0" => (Json.Encode.string nm)
          , "_1" => (Json.Encode.list (List.indexedMap mapProperty props))
          , "_2" => (Json.Encode.list (List.indexedMap mapChildren children))
          ]
      NUi.VString str ->
        Json.Encode.object
          [ "ctor" => (Json.Encode.string "VString")
          , "_0" => (Json.Encode.string str)
          ]
  in
  getReactViewInner "R" vr

getReactEvents vr =
  let getReactEventsInner id vr =
    case vr of
      NUi.VNode _ props children ->
        let mapProperty sid p =
          case p of
            NUi.EventHandler nm decoder ->
              let eventId = id ++ "-" ++ (toString sid) in
              [(eventId, decoder)]
            _ -> []
        in
        let mapChild cid c =
          let childId = id ++ "." ++ (toString cid) in
          getReactEventsInner childId c
        in
        let indexedProps = List.indexedMap mapProperty props in
        let indexedChildren = List.indexedMap mapChild children in
        (List.concatMap identity indexedProps) ++ (List.concatMap identity indexedChildren)
      NUi.VString str -> []
  in
  getReactEventsInner "R" vr

updateNativeApp :
    (Json.Encode.Value -> Cmd msg) ->
    (model -> NUi.NativeUi msg) ->
    (msg -> model -> (model, Cmd msg)) ->
    (Action msg) ->
    NativeAppState model msg ->
    (NativeAppState model msg, Cmd (Action msg))
updateNativeApp renderPort view update action model =
  let updateByAction act =
    let (updatedModel, cmds) = update act model.model in
    let viewResult = view updatedModel in
    let reactView = getReactView viewResult in
    let eventRouters = getReactEvents viewResult in
    ({ model | model = updatedModel, eventRouters = Dict.fromList eventRouters }, Cmd.batch [Cmd.map AppMsg cmds, Cmd.map (\_ -> NoOp) (renderPort reactView)])
  in
  case log "NativeApp:action" action of
    NoOp -> (model, Cmd.none)
    Paint ->
      let viewResult = view model.model in
      let reactView = getReactView viewResult in
      let eventRouters = getReactEvents viewResult in
      log "Paint" ({ model | eventRouters = Dict.fromList eventRouters }, Cmd.map (\_ -> NoOp) (renderPort reactView))
    AppMsg act -> updateByAction act
    ReactEvent (id,v) ->
      case Dict.get id model.eventRouters of
        Just dec ->
          case Json.Decode.decodeValue dec v of
            Ok vv ->
              updateByAction vv
            _ ->
              (model, Cmd.none)
        _ -> (model, Cmd.none)

makeSubs :
    (model -> Sub msg) ->
    Sub (String, Json.Decode.Value) ->
    NativeAppState model msg ->
    Sub (Action msg)
makeSubs subscriptions eventPort model =
  Sub.batch [Sub.map AppMsg (subscriptions model.model), Sub.map ReactEvent eventPort]

{-|
-}
program : Config model msg -> Program Never
program cfg =
  HtmlApp.program
    { init = log "init" ({ model = fst cfg.init, eventRouters = Dict.empty }, Cmd.batch [Task.perform (\_ -> Paint) (\_ -> Paint) (Task.succeed Paint), Cmd.map AppMsg (snd cfg.init)])
    , update = updateNativeApp cfg.renderPort cfg.view cfg.update
    , view = \model -> text ""
    , subscriptions = makeSubs cfg.subscriptions cfg.eventPort
    }

(=>) = (,)
