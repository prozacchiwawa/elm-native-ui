module NativeUi.Handlers exposing (..)

{-| elm-native-ui Handlers

@docs onLayout, onPress, onLoadStart, onProgress, onError, onLoad, onLoadEnd, onRegionChange, onRegionChangeComplete, onAnnotationPress, onPickerValueChange, onRefresh, onScroll, onScrollAnimationEnd, onContentSizeChange, onSegmentedControlValueChange, onChange, onSliderValueChange, onSlidingComplete, onSwitchValueChange, onBlur, onFocus, onChangeText, onEndEditing, onSelectionChange, onSubmitEditing, onKeyPress, onActionSelected, onIconClicked, onAccessibilityTap, onMagicTap, onResponderGrant, onResponderMove, onResponderReject, onResponderRelease, onResponderTerminate, onResponderTerminationRequest, onStartShouldSetResponder, onStartShouldSetResponderCapture, onMoveShouldSetResponder, onMoveShouldSetResponderCapture
-}

import Json.Decode
import NativeUi exposing (Property, on)


{-|
-}
onLayout : a -> Property a
onLayout action =
  on "Layout" Json.Decode.value (\_ -> action)


{-|
-}
onPress : a -> Property a
onPress action =
  on "Press" Json.Decode.value (\_ -> action)


{-|
-}
onLoadStart : a -> Property a
onLoadStart action =
  on "LoadStart" Json.Decode.value (\_ -> action)


{-|
-}
onProgress : a -> Property a
onProgress action =
  on "Progress" Json.Decode.value (\_ -> action)


{-|
-}
onError : a -> Property a
onError action =
  on "Error" Json.Decode.value (\_ -> action)


{-|
-}
onLoad : a -> Property a
onLoad action =
  on "Load" Json.Decode.value (\_ -> action)


{-|
-}
onLoadEnd : a -> Property a
onLoadEnd action =
  on "LoadEnd" Json.Decode.value (\_ -> action)


{-|
-}
onRegionChange : a -> Property a
onRegionChange action =
  on "RegionChange" Json.Decode.value (\_ -> action)


{-|
-}
onRegionChangeComplete : a -> Property a
onRegionChangeComplete action =
  on "RegionChangeComplete" Json.Decode.value (\_ -> action)


{-|
-}
onAnnotationPress : a -> Property a
onAnnotationPress action =
  on "AnnotationPress" Json.Decode.value (\_ -> action)


{-|
-}
onPickerValueChange : (String -> a) -> Property a
onPickerValueChange stringToAction =
  on "PickerValueChange" Json.Decode.string (\value -> (stringToAction value))


{-|
-}
onRefresh : a -> Property a
onRefresh action =
  on "Refresh" Json.Decode.value (\_ -> action)


{-|
-}
onScroll : a -> Property a
onScroll action =
  on "Scroll" Json.Decode.value (\_ -> action)


{-|
-}
onScrollAnimationEnd : a -> Property a
onScrollAnimationEnd action =
  on "ScrollAnimationEnd" Json.Decode.value (\_ -> action)


{-|
-}
onContentSizeChange : a -> Property a
onContentSizeChange action =
  on "ContentSizeChange" Json.Decode.value (\_ -> action)


{-|
-}
onSegmentedControlValueChange : (Int -> a) -> Property a
onSegmentedControlValueChange intToAction =
  on "SegmentedControlValueChange" Json.Decode.int (\value -> (intToAction value))


{-|
-}
onChange : a -> Property a
onChange action =
  on "Change" Json.Decode.value (\_ -> action)


{-|
-}
onSliderValueChange : (Float -> a) -> Property a
onSliderValueChange floatToAction =
  on "SliderValueChange" Json.Decode.float (\value -> (floatToAction value))


{-|
-}
onSlidingComplete : a -> Property a
onSlidingComplete action =
  on "SlidingComplete" Json.Decode.value (\_ -> action)


{-|
-}
onSwitchValueChange : (Int -> a) -> Property a
onSwitchValueChange intToAction =
  on "SwitchValueChange" Json.Decode.int (\value -> (intToAction value))


{-|
-}
onBlur : a -> Property a
onBlur action =
  on "Blur" Json.Decode.value (\_ -> action)


{-|
-}
onFocus : a -> Property a
onFocus action =
  on "Focus" Json.Decode.value (\_ -> action)


{-|
-}
onChangeText : (String -> a) -> Property a
onChangeText stringToAction =
  on "ChangeText" Json.Decode.string (\text -> (stringToAction text))


{-|
-}
onEndEditing : a -> Property a
onEndEditing action =
  on "EndEditing" Json.Decode.value (\_ -> action)


{-|
-}
onSelectionChange : a -> Property a
onSelectionChange action =
  on "SelectionChange" Json.Decode.value (\_ -> action)


{-|
-}
onSubmitEditing : a -> Property a
onSubmitEditing action =
  on "SubmitEditing" Json.Decode.value (\_ -> action)


{-|
-}
onKeyPress : a -> Property a
onKeyPress action =
  on "KeyPress" Json.Decode.value (\_ -> action)


{-|
-}
onActionSelected : a -> Property a
onActionSelected action =
  on "ActionSelected" Json.Decode.value (\_ -> action)


{-|
-}
onIconClicked : a -> Property a
onIconClicked action =
  on "IconClicked" Json.Decode.value (\_ -> action)


{-|
-}
onAccessibilityTap : a -> Property a
onAccessibilityTap action =
  on "AccessibilityTap" Json.Decode.value (\_ -> action)


{-|
-}
onMagicTap : a -> Property a
onMagicTap action =
  on "MagicTap" Json.Decode.value (\_ -> action)


{-|
-}
onResponderGrant : a -> Property a
onResponderGrant action =
  on "ResponderGrant" Json.Decode.value (\_ -> action)


{-|
-}
onResponderMove : a -> Property a
onResponderMove action =
  on "ResponderMove" Json.Decode.value (\_ -> action)


{-|
-}
onResponderReject : a -> Property a
onResponderReject action =
  on "ResponderReject" Json.Decode.value (\_ -> action)


{-|
-}
onResponderRelease : a -> Property a
onResponderRelease action =
  on "ResponderRelease" Json.Decode.value (\_ -> action)


{-|
-}
onResponderTerminate : a -> Property a
onResponderTerminate action =
  on "ResponderTerminate" Json.Decode.value (\_ -> action)


{-|
-}
onResponderTerminationRequest : a -> Property a
onResponderTerminationRequest action =
  on "ResponderTerminationRequest" Json.Decode.value (\_ -> action)


{-|
-}
onStartShouldSetResponder : a -> Property a
onStartShouldSetResponder action =
  on "StartShouldSetResponder" Json.Decode.value (\_ -> action)


{-|
-}
onStartShouldSetResponderCapture : a -> Property a
onStartShouldSetResponderCapture action =
  on "StartShouldSetResponderCapture" Json.Decode.value (\_ -> action)


{-|
-}
onMoveShouldSetResponder : a -> Property a
onMoveShouldSetResponder action =
  on "MoveShouldSetResponder" Json.Decode.value (\_ -> action)


{-|
-}
onMoveShouldSetResponderCapture : a -> Property a
onMoveShouldSetResponderCapture action =
  on "MoveShouldSetResponderCapture" Json.Decode.value (\_ -> action)
