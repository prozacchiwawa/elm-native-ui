module NativeUi.Elements exposing (..)

{-| elm-native-ui Elements

@docs text, image, activityIndicator, mapView, picker, progressBar, progressView, refreshControl, scrollView, segmentedControl, slider, statusBar, switch, tabBar, textInput, toolbar, view
-}

import NativeUi exposing (Property, NativeUi, node)


{-|
-}
text : List (Property a) -> List (NativeUi a) -> NativeUi a
text =
  node "Text"


{-|
-}
image : List (Property a) -> List (NativeUi a) -> NativeUi a
image =
  node "Image"


{-|
-}
activityIndicator : List (Property a) -> List (NativeUi a) -> NativeUi a
activityIndicator =
  node "ActivityIndicator"


{-|
-}
mapView : List (Property a) -> List (NativeUi a) -> NativeUi a
mapView =
  node "MapView"


{-|
-}
picker : List (Property a) -> List (NativeUi a) -> NativeUi a
picker =
  node "Picker"


{-|
-}
progressBar : List (Property a) -> List (NativeUi a) -> NativeUi a
progressBar =
  node "ProgressBar"


{-|
-}
progressView : List (Property a) -> List (NativeUi a) -> NativeUi a
progressView =
  node "ProgressView"


{-|
-}
refreshControl : List (Property a) -> List (NativeUi a) -> NativeUi a
refreshControl =
  node "RefreshControl"


{-|
-}
scrollView : List (Property a) -> List (NativeUi a) -> NativeUi a
scrollView =
  node "ScrollView"


{-|
-}
segmentedControl : List (Property a) -> List (NativeUi a) -> NativeUi a
segmentedControl =
  node "SegmentedControl"


{-|
-}
slider : List (Property a) -> List (NativeUi a) -> NativeUi a
slider =
  node "Slider"


{-|
-}
statusBar : List (Property a) -> List (NativeUi a) -> NativeUi a
statusBar =
  node "StatusBar"


{-|
-}
switch : List (Property a) -> List (NativeUi a) -> NativeUi a
switch =
  node "Switch"


{-|
-}
tabBar : List (Property a) -> List (NativeUi a) -> NativeUi a
tabBar =
  node "TabBar"


{-|
-}
textInput : List (Property a) -> List (NativeUi a) -> NativeUi a
textInput =
  node "TextInput"


{-|
-}
toolbar : List (Property a) -> List (NativeUi a) -> NativeUi a
toolbar =
  node "Toolbar"


{-|
-}
view : List (Property a) -> List (NativeUi a) -> NativeUi a
view =
  node "View"
