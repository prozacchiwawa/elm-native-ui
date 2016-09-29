module NativeUi exposing (NativeUi(..), node, string, style, on, Property(..), property, map)

{-| Render your application as a React Native app.

# Types
@docs NativeUi
# Common Helpers
@docs node, string, style, property
# Events
@docs on
# Types
@docs Property
-}

import Json.Encode
import Json.Decode
import NativeUi.Style as Style


{-| A node in the virtual View Tree that forms the basis of the UI for your app.
-}
type NativeUi a
  = VNode String (List (Property a)) (List (NativeUi a))
  | VString String


{-| `NativeUi` nodes take a List of Properties (or "props") to specify their behavior and presentation.
Most Properties can be represented as Json values, and you should always try to do so if possible.
If you must use a property that can't be encoded as Json, the NativeProperty tag can be used
to attach an opaque `NativeValue`.
-}
type Property a
  = JsonProperty String Json.Decode.Value
  | EventHandler String (Json.Decode.Decoder a)


{-| Create a `NativeUi` node with the given `tagName`, a list of properties,
and a list of child `NativeUi` nodes.

The `tagName` will be used to look up a React Component class with the same name,
so e.g. `node "View"` will render a React Native `View` component.
-}
node : String -> List (Property a) -> List (NativeUi a) -> NativeUi a
node tagName props children =
  VNode tagName props children


{-| Just turn a plain text string into a `NativeUi` node, so that you can add it
as a child of another node.

    text
      [ style
        [ Style.fontSize 20
        , Style.color "blue"
        ]
      ]
      [ string "Hello World!" ]
-}
string : String -> NativeUi a
string =
  VString



-- Properties


{-| Attach arbitrary properties to `NativeUi` nodes.

Use this for properties that can be represented as Json values.
-}
property : String -> Json.Decode.Value -> Property a
property name value =
  JsonProperty name value


{-| Turns a list of `Style`s into a property you can attach to a `NativeUi` node.
-}
style : List Style.Style -> Property a
style styles =
  Style.encode styles
    |> property "style"



-- Events

{-| -}
on : String -> Json.Decode.Decoder a -> (a -> b) -> Property b
on name decoder tagger =
  let
    fullName =
      "on" ++ name

  in
    EventHandler fullName (decoder `Json.Decode.andThen` (\v -> Json.Decode.succeed (tagger v)))

propMap : (a -> msg) -> Property a -> Property msg
propMap f p =
  case p of
    JsonProperty n v -> JsonProperty n v
    EventHandler n d -> EventHandler n (Json.Decode.map f d)

{-| Nest views as with [Html.App.map](http://package.elm-lang.org/packages/elm-lang/html/latest/Html-App#map)
-}
map : (a -> msg) -> NativeUi a -> NativeUi msg
map f nd =
  case nd of
    VString s -> VString s
    VNode ty props children ->
      VNode ty (List.map (propMap f) props) (List.map (map f) children)
