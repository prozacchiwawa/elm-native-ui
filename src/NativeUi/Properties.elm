module NativeUi.Properties exposing (..)

{-| elm-native-ui Properties

@docs numberOfLines, suppressHighlighting, testID, allowFontScaling, source, defaultSource, accessible, accessibilityLabel, resizeMode, animating, color, hidesWhenStopped, size, showsUserLocation, followUserLocation, showsPointsOfInterest, showsCompass, zoomEnabled, rotateEnabled, pitchEnabled, scrollEnabled, mapType, maxDelta, minDelta, active, enabled, mode, prompt, progress, progressViewStyle, progressTintColor, trackTintColor, refreshing, title, automaticallyAdjustContentInsets, bounces, bouncesZoom, alwaysBounceHorizontal, alwaysBounceVertical, centerContent, horizontal, indicatorStyle, directionalLockEnabled, canCancelContentTouches, keyboardDismissMode, keyboardShouldPersistTaps, maximumZoomScale, minimumZoomScale, pagingEnabled, scrollEventThrottle, scrollsToTop, sendMomentumEvents, showsHorizontalScrollIndicator, showsVerticalScrollIndicator, snapToInterval, snapToAlignment, removeClippedSubviews, zoomScale, selectedIndex, tintColor, momentary, sliderValue, step, minimumValue, maximumValue, minimumTrackTintColor, maximumTrackTintColor, disabled, hidden, animated, translucent, barStyle, networkActivityIndicatorVisible, showHideTransition, autoCapitalize, autoCorrect, autoFocus, editable, keyboardType, keyboardAppearance, returnKeyType, maxLength, enablesReturnKeyAutomatically, multiline, placeholder, placeholderTextColor, secureTextEntry, selectionColor, value, defaultValue, clearButtonMode, clearTextOnFocus, selectTextOnFocus, blurOnSubmit, underlineColorAndroid, subtitle, contentInsetStart, contentInsetEnd, rtl, accessibilityLiveRegion, importantForAccessibility, pointerEvents, renderToHardwareTextureAndroid, shouldRasterizeIOS, collapsable, needsOffscreenAlphaCompositing, ActivityIndicatorSize, ImageResizeMode, MapViewMapType, PickerMode, ProgressViewProgressViewStyle, ScrollViewIndicatorStyle, ScrollViewKeyboardDismissMode, ScrollViewSnapToAlignment, StatusBarBarStyle, StatusBarShowHideTransition, TextInputAutoCapitalize, TextInputClearButtonMode, TextInputKeyboardAppearance, TextInputKeyboardType, TextInputReturnKeyType, ViewAccessibilityLiveRegion, ViewImportantForAccessibility, ViewPointerEvents 
-}

import Json.Encode
import NativeUi exposing (Property, property)


{-|
-}
numberOfLines : Float -> Property a
numberOfLines val =
  property "numberOfLines" (Json.Encode.float val)


{-|
-}
suppressHighlighting : Bool -> Property a
suppressHighlighting val =
  property "suppressHighlighting" (Json.Encode.bool val)


{-|
-}
testID : String -> Property a
testID val =
  property "testID" (Json.Encode.string val)


{-|
-}
allowFontScaling : Bool -> Property a
allowFontScaling val =
  property "allowFontScaling" (Json.Encode.bool val)


{-|
-}
source : String -> Property a
source uri =
  property "source" (Json.Encode.object [ ( "uri", Json.Encode.string uri ) ])


{-|
-}
defaultSource : String -> Property a
defaultSource uri =
  property "defaultSource" (Json.Encode.object [ ( "uri", Json.Encode.string uri ) ])


{-|
-}
accessible : Bool -> Property a
accessible val =
  property "accessible" (Json.Encode.bool val)


{-|
-}
accessibilityLabel : String -> Property a
accessibilityLabel val =
  property "accessibilityLabel" (Json.Encode.string val)


{-|
-}
type ImageResizeMode
  = ImageResizeModeCover
  | ImageResizeModeContain
  | ImageResizeModeStretch


{-|
-}
resizeMode : ImageResizeMode -> Property a
resizeMode val =
  let
    stringValue =
      case val of
        ImageResizeModeCover ->
          "cover"

        ImageResizeModeContain ->
          "contain"

        ImageResizeModeStretch ->
          "stretch"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "resizeMode" jsonValue


{-|
-}
animating : Bool -> Property a
animating val =
  property "animating" (Json.Encode.bool val)


{-|
-}
color : String -> Property a
color val =
  property "color" (Json.Encode.string val)


{-|
-}
hidesWhenStopped : Bool -> Property a
hidesWhenStopped val =
  property "hidesWhenStopped" (Json.Encode.bool val)


{-|
-}
type ActivityIndicatorSize
  = ActivityIndicatorSizeSmall
  | ActivityIndicatorSizeLarge


{-|
-}
size : ActivityIndicatorSize -> Property a
size val =
  let
    stringValue =
      case val of
        ActivityIndicatorSizeSmall ->
          "small"

        ActivityIndicatorSizeLarge ->
          "large"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "size" jsonValue


{-|
-}
showsUserLocation : Bool -> Property a
showsUserLocation val =
  property "showsUserLocation" (Json.Encode.bool val)


{-|
-}
followUserLocation : Bool -> Property a
followUserLocation val =
  property "followUserLocation" (Json.Encode.bool val)


{-|
-}
showsPointsOfInterest : Bool -> Property a
showsPointsOfInterest val =
  property "showsPointsOfInterest" (Json.Encode.bool val)


{-|
-}
showsCompass : Bool -> Property a
showsCompass val =
  property "showsCompass" (Json.Encode.bool val)


{-|
-}
zoomEnabled : Bool -> Property a
zoomEnabled val =
  property "zoomEnabled" (Json.Encode.bool val)


{-|
-}
rotateEnabled : Bool -> Property a
rotateEnabled val =
  property "rotateEnabled" (Json.Encode.bool val)


{-|
-}
pitchEnabled : Bool -> Property a
pitchEnabled val =
  property "pitchEnabled" (Json.Encode.bool val)


{-|
-}
scrollEnabled : Bool -> Property a
scrollEnabled val =
  property "scrollEnabled" (Json.Encode.bool val)


{-|
-}
type MapViewMapType
  = MapViewMapTypeStandard
  | MapViewMapTypeSatellite
  | MapViewMapTypeHybrid


{-|
-}
mapType : MapViewMapType -> Property a
mapType val =
  let
    stringValue =
      case val of
        MapViewMapTypeStandard ->
          "standard"

        MapViewMapTypeSatellite ->
          "satellite"

        MapViewMapTypeHybrid ->
          "hybrid"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "mapType" jsonValue


{-|
-}
maxDelta : Float -> Property a
maxDelta val =
  property "maxDelta" (Json.Encode.float val)


{-|
-}
minDelta : Float -> Property a
minDelta val =
  property "minDelta" (Json.Encode.float val)


{-|
-}
active : Bool -> Property a
active val =
  property "active" (Json.Encode.bool val)


{-|
-}
enabled : Bool -> Property a
enabled val =
  property "enabled" (Json.Encode.bool val)


{-|
-}
type PickerMode
  = PickerModeDialog
  | PickerModeDropdown


{-|
-}
mode : PickerMode -> Property a
mode val =
  let
    stringValue =
      case val of
        PickerModeDialog ->
          "dialog"

        PickerModeDropdown ->
          "dropdown"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "mode" jsonValue


{-|
-}
prompt : String -> Property a
prompt val =
  property "prompt" (Json.Encode.string val)


{-|
-}
progress : Float -> Property a
progress val =
  property "progress" (Json.Encode.float val)


{-|
-}
type ProgressViewProgressViewStyle
  = ProgressViewProgressViewStyleDefault
  | ProgressViewProgressViewStyleBar


{-|
-}
progressViewStyle : ProgressViewProgressViewStyle -> Property a
progressViewStyle val =
  let
    stringValue =
      case val of
        ProgressViewProgressViewStyleDefault ->
          "default"

        ProgressViewProgressViewStyleBar ->
          "bar"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "progressViewStyle" jsonValue


{-|
-}
progressTintColor : String -> Property a
progressTintColor val =
  property "progressTintColor" (Json.Encode.string val)


{-|
-}
trackTintColor : String -> Property a
trackTintColor val =
  property "trackTintColor" (Json.Encode.string val)


{-|
-}
refreshing : Bool -> Property a
refreshing val =
  property "refreshing" (Json.Encode.bool val)


{-|
-}
title : String -> Property a
title val =
  property "title" (Json.Encode.string val)


{-|
-}
automaticallyAdjustContentInsets : Bool -> Property a
automaticallyAdjustContentInsets val =
  property "automaticallyAdjustContentInsets" (Json.Encode.bool val)


{-|
-}
bounces : Bool -> Property a
bounces val =
  property "bounces" (Json.Encode.bool val)


{-|
-}
bouncesZoom : Bool -> Property a
bouncesZoom val =
  property "bouncesZoom" (Json.Encode.bool val)


{-|
-}
alwaysBounceHorizontal : Bool -> Property a
alwaysBounceHorizontal val =
  property "alwaysBounceHorizontal" (Json.Encode.bool val)


{-|
-}
alwaysBounceVertical : Bool -> Property a
alwaysBounceVertical val =
  property "alwaysBounceVertical" (Json.Encode.bool val)


{-|
-}
centerContent : Bool -> Property a
centerContent val =
  property "centerContent" (Json.Encode.bool val)


{-|
-}
horizontal : Bool -> Property a
horizontal val =
  property "horizontal" (Json.Encode.bool val)


{-|
-}
type ScrollViewIndicatorStyle
  = ScrollViewIndicatorStyleDefault
  | ScrollViewIndicatorStyleBlack
  | ScrollViewIndicatorStyleWhite


{-|
-}
indicatorStyle : ScrollViewIndicatorStyle -> Property a
indicatorStyle val =
  let
    stringValue =
      case val of
        ScrollViewIndicatorStyleDefault ->
          "default"

        ScrollViewIndicatorStyleBlack ->
          "black"

        ScrollViewIndicatorStyleWhite ->
          "white"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "indicatorStyle" jsonValue


{-|
-}
directionalLockEnabled : Bool -> Property a
directionalLockEnabled val =
  property "directionalLockEnabled" (Json.Encode.bool val)


{-|
-}
canCancelContentTouches : Bool -> Property a
canCancelContentTouches val =
  property "canCancelContentTouches" (Json.Encode.bool val)


{-|
-}
type ScrollViewKeyboardDismissMode
  = ScrollViewKeyboardDismissModeNone
  | ScrollViewKeyboardDismissModeInteractive
  | ScrollViewKeyboardDismissModeOnDrag


{-|
-}
keyboardDismissMode : ScrollViewKeyboardDismissMode -> Property a
keyboardDismissMode val =
  let
    stringValue =
      case val of
        ScrollViewKeyboardDismissModeNone ->
          "none"

        ScrollViewKeyboardDismissModeInteractive ->
          "interactive"

        ScrollViewKeyboardDismissModeOnDrag ->
          "on-drag"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "keyboardDismissMode" jsonValue


{-|
-}
keyboardShouldPersistTaps : Bool -> Property a
keyboardShouldPersistTaps val =
  property "keyboardShouldPersistTaps" (Json.Encode.bool val)


{-|
-}
maximumZoomScale : Float -> Property a
maximumZoomScale val =
  property "maximumZoomScale" (Json.Encode.float val)


{-|
-}
minimumZoomScale : Float -> Property a
minimumZoomScale val =
  property "minimumZoomScale" (Json.Encode.float val)


{-|
-}
pagingEnabled : Bool -> Property a
pagingEnabled val =
  property "pagingEnabled" (Json.Encode.bool val)


{-|
-}
scrollEventThrottle : Float -> Property a
scrollEventThrottle val =
  property "scrollEventThrottle" (Json.Encode.float val)


{-|
-}
scrollsToTop : Bool -> Property a
scrollsToTop val =
  property "scrollsToTop" (Json.Encode.bool val)


{-|
-}
sendMomentumEvents : Bool -> Property a
sendMomentumEvents val =
  property "sendMomentumEvents" (Json.Encode.bool val)


{-|
-}
showsHorizontalScrollIndicator : Bool -> Property a
showsHorizontalScrollIndicator val =
  property "showsHorizontalScrollIndicator" (Json.Encode.bool val)


{-|
-}
showsVerticalScrollIndicator : Bool -> Property a
showsVerticalScrollIndicator val =
  property "showsVerticalScrollIndicator" (Json.Encode.bool val)


{-|
-}
snapToInterval : Float -> Property a
snapToInterval val =
  property "snapToInterval" (Json.Encode.float val)


{-|
-}
type ScrollViewSnapToAlignment
  = ScrollViewSnapToAlignmentStart
  | ScrollViewSnapToAlignmentCenter
  | ScrollViewSnapToAlignmentEnd


{-|
-}
snapToAlignment : ScrollViewSnapToAlignment -> Property a
snapToAlignment val =
  let
    stringValue =
      case val of
        ScrollViewSnapToAlignmentStart ->
          "start"

        ScrollViewSnapToAlignmentCenter ->
          "center"

        ScrollViewSnapToAlignmentEnd ->
          "end"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "snapToAlignment" jsonValue


{-|
-}
removeClippedSubviews : Bool -> Property a
removeClippedSubviews val =
  property "removeClippedSubviews" (Json.Encode.bool val)


{-|
-}
zoomScale : Float -> Property a
zoomScale val =
  property "zoomScale" (Json.Encode.float val)


{-|
-}
selectedIndex : Float -> Property a
selectedIndex val =
  property "selectedIndex" (Json.Encode.float val)


{-|
-}
tintColor : String -> Property a
tintColor val =
  property "tintColor" (Json.Encode.string val)


{-|
-}
momentary : Bool -> Property a
momentary val =
  property "momentary" (Json.Encode.bool val)


{-|
-}
sliderValue : Float -> Property a
sliderValue val =
  property "sliderValue" (Json.Encode.float val)


{-|
-}
step : Float -> Property a
step val =
  property "step" (Json.Encode.float val)


{-|
-}
minimumValue : Float -> Property a
minimumValue val =
  property "minimumValue" (Json.Encode.float val)


{-|
-}
maximumValue : Float -> Property a
maximumValue val =
  property "maximumValue" (Json.Encode.float val)


{-|
-}
minimumTrackTintColor : String -> Property a
minimumTrackTintColor val =
  property "minimumTrackTintColor" (Json.Encode.string val)


{-|
-}
maximumTrackTintColor : String -> Property a
maximumTrackTintColor val =
  property "maximumTrackTintColor" (Json.Encode.string val)


{-|
-}
disabled : Bool -> Property a
disabled val =
  property "disabled" (Json.Encode.bool val)


{-|
-}
hidden : Bool -> Property a
hidden val =
  property "hidden" (Json.Encode.bool val)


{-|
-}
animated : Bool -> Property a
animated val =
  property "animated" (Json.Encode.bool val)


{-|
-}
translucent : Bool -> Property a
translucent val =
  property "translucent" (Json.Encode.bool val)


{-|
-}
type StatusBarBarStyle
  = StatusBarBarStyleDefault
  | StatusBarBarStyleLightContent


{-|
-}
barStyle : StatusBarBarStyle -> Property a
barStyle val =
  let
    stringValue =
      case val of
        StatusBarBarStyleDefault ->
          "default"

        StatusBarBarStyleLightContent ->
          "light-content"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "barStyle" jsonValue


{-|
-}
networkActivityIndicatorVisible : Bool -> Property a
networkActivityIndicatorVisible val =
  property "networkActivityIndicatorVisible" (Json.Encode.bool val)


{-|
-}
type StatusBarShowHideTransition
  = StatusBarShowHideTransitionFade
  | StatusBarShowHideTransitionSlide


{-|
-}
showHideTransition : StatusBarShowHideTransition -> Property a
showHideTransition val =
  let
    stringValue =
      case val of
        StatusBarShowHideTransitionFade ->
          "fade"

        StatusBarShowHideTransitionSlide ->
          "slide"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "showHideTransition" jsonValue


{-|
-}
type TextInputAutoCapitalize
  = TextInputAutoCapitalizeNone
  | TextInputAutoCapitalizeSentences
  | TextInputAutoCapitalizeWords
  | TextInputAutoCapitalizeCharacters


{-|
-}
autoCapitalize : TextInputAutoCapitalize -> Property a
autoCapitalize val =
  let
    stringValue =
      case val of
        TextInputAutoCapitalizeNone ->
          "none"

        TextInputAutoCapitalizeSentences ->
          "sentences"

        TextInputAutoCapitalizeWords ->
          "words"

        TextInputAutoCapitalizeCharacters ->
          "characters"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "autoCapitalize" jsonValue


{-|
-}
autoCorrect : Bool -> Property a
autoCorrect val =
  property "autoCorrect" (Json.Encode.bool val)


{-|
-}
autoFocus : Bool -> Property a
autoFocus val =
  property "autoFocus" (Json.Encode.bool val)


{-|
-}
editable : Bool -> Property a
editable val =
  property "editable" (Json.Encode.bool val)


{-|
-}
type TextInputKeyboardType
  = TextInputKeyboardTypeDefault
  | TextInputKeyboardTypeEmailAddress
  | TextInputKeyboardTypeNumeric
  | TextInputKeyboardTypePhonePad
  | TextInputKeyboardTypeAsciiCapable
  | TextInputKeyboardTypeNumbersAndPunctuation
  | TextInputKeyboardTypeUrl
  | TextInputKeyboardTypeNumberPad
  | TextInputKeyboardTypeNamePhonePad
  | TextInputKeyboardTypeDecimalPad
  | TextInputKeyboardTypeTwitter
  | TextInputKeyboardTypeWebSearch


{-|
-}
keyboardType : TextInputKeyboardType -> Property a
keyboardType val =
  let
    stringValue =
      case val of
        TextInputKeyboardTypeDefault ->
          "default"

        TextInputKeyboardTypeEmailAddress ->
          "email-address"

        TextInputKeyboardTypeNumeric ->
          "numeric"

        TextInputKeyboardTypePhonePad ->
          "phone-pad"

        TextInputKeyboardTypeAsciiCapable ->
          "ascii-capable"

        TextInputKeyboardTypeNumbersAndPunctuation ->
          "numbers-and-punctuation"

        TextInputKeyboardTypeUrl ->
          "url"

        TextInputKeyboardTypeNumberPad ->
          "number-pad"

        TextInputKeyboardTypeNamePhonePad ->
          "name-phone-pad"

        TextInputKeyboardTypeDecimalPad ->
          "decimal-pad"

        TextInputKeyboardTypeTwitter ->
          "twitter"

        TextInputKeyboardTypeWebSearch ->
          "web-search"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "keyboardType" jsonValue


{-|
-}
type TextInputKeyboardAppearance
  = TextInputKeyboardAppearanceDefault
  | TextInputKeyboardAppearanceLight
  | TextInputKeyboardAppearanceDark


{-|
-}
keyboardAppearance : TextInputKeyboardAppearance -> Property a
keyboardAppearance val =
  let
    stringValue =
      case val of
        TextInputKeyboardAppearanceDefault ->
          "default"

        TextInputKeyboardAppearanceLight ->
          "light"

        TextInputKeyboardAppearanceDark ->
          "dark"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "keyboardAppearance" jsonValue


{-|
-}
type TextInputReturnKeyType
  = TextInputReturnKeyTypeDefault
  | TextInputReturnKeyTypeGo
  | TextInputReturnKeyTypeGoogle
  | TextInputReturnKeyTypeJoin
  | TextInputReturnKeyTypeNext
  | TextInputReturnKeyTypeRoute
  | TextInputReturnKeyTypeSearch
  | TextInputReturnKeyTypeSend
  | TextInputReturnKeyTypeYahoo
  | TextInputReturnKeyTypeDone
  | TextInputReturnKeyTypeEmergencyCall


{-|
-}
returnKeyType : TextInputReturnKeyType -> Property a
returnKeyType val =
  let
    stringValue =
      case val of
        TextInputReturnKeyTypeDefault ->
          "default"

        TextInputReturnKeyTypeGo ->
          "go"

        TextInputReturnKeyTypeGoogle ->
          "google"

        TextInputReturnKeyTypeJoin ->
          "join"

        TextInputReturnKeyTypeNext ->
          "next"

        TextInputReturnKeyTypeRoute ->
          "route"

        TextInputReturnKeyTypeSearch ->
          "search"

        TextInputReturnKeyTypeSend ->
          "send"

        TextInputReturnKeyTypeYahoo ->
          "yahoo"

        TextInputReturnKeyTypeDone ->
          "done"

        TextInputReturnKeyTypeEmergencyCall ->
          "emergency-call"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "returnKeyType" jsonValue


{-|
-}
maxLength : Float -> Property a
maxLength val =
  property "maxLength" (Json.Encode.float val)


{-|
-}
enablesReturnKeyAutomatically : Bool -> Property a
enablesReturnKeyAutomatically val =
  property "enablesReturnKeyAutomatically" (Json.Encode.bool val)


{-|
-}
multiline : Bool -> Property a
multiline val =
  property "multiline" (Json.Encode.bool val)


{-|
-}
placeholder : String -> Property a
placeholder val =
  property "placeholder" (Json.Encode.string val)


{-|
-}
placeholderTextColor : String -> Property a
placeholderTextColor val =
  property "placeholderTextColor" (Json.Encode.string val)


{-|
-}
secureTextEntry : Bool -> Property a
secureTextEntry val =
  property "secureTextEntry" (Json.Encode.bool val)


{-|
-}
selectionColor : String -> Property a
selectionColor val =
  property "selectionColor" (Json.Encode.string val)


{-|
-}
value : String -> Property a
value val =
  property "value" (Json.Encode.string val)


{-|
-}
defaultValue : String -> Property a
defaultValue val =
  property "defaultValue" (Json.Encode.string val)


{-|
-}
type TextInputClearButtonMode
  = TextInputClearButtonModeNever
  | TextInputClearButtonModeWhileEditing
  | TextInputClearButtonModeUnlessEditing
  | TextInputClearButtonModeAlways


{-|
-}
clearButtonMode : TextInputClearButtonMode -> Property a
clearButtonMode val =
  let
    stringValue =
      case val of
        TextInputClearButtonModeNever ->
          "never"

        TextInputClearButtonModeWhileEditing ->
          "while-editing"

        TextInputClearButtonModeUnlessEditing ->
          "unless-editing"

        TextInputClearButtonModeAlways ->
          "always"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "clearButtonMode" jsonValue


{-|
-}
clearTextOnFocus : Bool -> Property a
clearTextOnFocus val =
  property "clearTextOnFocus" (Json.Encode.bool val)


{-|
-}
selectTextOnFocus : Bool -> Property a
selectTextOnFocus val =
  property "selectTextOnFocus" (Json.Encode.bool val)


{-|
-}
blurOnSubmit : Bool -> Property a
blurOnSubmit val =
  property "blurOnSubmit" (Json.Encode.bool val)


{-|
-}
underlineColorAndroid : String -> Property a
underlineColorAndroid val =
  property "underlineColorAndroid" (Json.Encode.string val)


{-|
-}
subtitle : String -> Property a
subtitle val =
  property "subtitle" (Json.Encode.string val)


{-|
-}
contentInsetStart : Float -> Property a
contentInsetStart val =
  property "contentInsetStart" (Json.Encode.float val)


{-|
-}
contentInsetEnd : Float -> Property a
contentInsetEnd val =
  property "contentInsetEnd" (Json.Encode.float val)


{-|
-}
rtl : Bool -> Property a
rtl val =
  property "rtl" (Json.Encode.bool val)


{-|
-}
type ViewAccessibilityLiveRegion
  = ViewAccessibilityLiveRegionNone
  | ViewAccessibilityLiveRegionPolite
  | ViewAccessibilityLiveRegionAssertive


{-|
-}
accessibilityLiveRegion : ViewAccessibilityLiveRegion -> Property a
accessibilityLiveRegion val =
  let
    stringValue =
      case val of
        ViewAccessibilityLiveRegionNone ->
          "none"

        ViewAccessibilityLiveRegionPolite ->
          "polite"

        ViewAccessibilityLiveRegionAssertive ->
          "assertive"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "accessibilityLiveRegion" jsonValue


{-|
-}
type ViewImportantForAccessibility
  = ViewImportantForAccessibilityAuto
  | ViewImportantForAccessibilityYes
  | ViewImportantForAccessibilityNo
  | ViewImportantForAccessibilityNoHideDescendants


{-|
-}
importantForAccessibility : ViewImportantForAccessibility -> Property a
importantForAccessibility val =
  let
    stringValue =
      case val of
        ViewImportantForAccessibilityAuto ->
          "auto"

        ViewImportantForAccessibilityYes ->
          "yes"

        ViewImportantForAccessibilityNo ->
          "no"

        ViewImportantForAccessibilityNoHideDescendants ->
          "no-hide-descendants"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "importantForAccessibility" jsonValue


{-|
-}
type ViewPointerEvents
  = ViewPointerEventsBoxNone
  | ViewPointerEventsNone
  | ViewPointerEventsBoxOnly
  | ViewPointerEventsAuto


{-|
-}
pointerEvents : ViewPointerEvents -> Property a
pointerEvents val =
  let
    stringValue =
      case val of
        ViewPointerEventsBoxNone ->
          "box-none"

        ViewPointerEventsNone ->
          "none"

        ViewPointerEventsBoxOnly ->
          "box-only"

        ViewPointerEventsAuto ->
          "auto"

    jsonValue =
      Json.Encode.string stringValue
  in
    property "pointerEvents" jsonValue


{-|
-}
renderToHardwareTextureAndroid : Bool -> Property a
renderToHardwareTextureAndroid val =
  property "renderToHardwareTextureAndroid" (Json.Encode.bool val)


{-|
-}
shouldRasterizeIOS : Bool -> Property a
shouldRasterizeIOS val =
  property "shouldRasterizeIOS" (Json.Encode.bool val)


{-|
-}
collapsable : Bool -> Property a
collapsable val =
  property "collapsable" (Json.Encode.bool val)


{-|
-}
needsOffscreenAlphaCompositing : Bool -> Property a
needsOffscreenAlphaCompositing val =
  property "needsOffscreenAlphaCompositing" (Json.Encode.bool val)
