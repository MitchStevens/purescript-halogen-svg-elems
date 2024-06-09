module Halogen.Svg.Indexed.Class where

import Prelude

import Type.Row (type (+))
import Web.UIEvent.KeyboardEvent (KeyboardEvent)
import Web.UIEvent.MouseEvent (MouseEvent)
import Web.UIEvent.WheelEvent (WheelEvent)

{-
The table below show which groups of attributes apply to which elements. This
table is compiled by looking up each attribute on MDN
(e.g., https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke)
and looking at the list labeled "You can use this attribute with the following
SVG elements:". Groups are formed from attributes that have the same element
applicability.

element            stroke | strokeEnd | strokeJoin | fill  | font  | marker
circle                X   |     -     |     -      |   X   |   -   |    X
ellipse               X   |     -     |     -      |   X   |   -   |    X
line                  X   |     X     |     -      |   -   |   -   |    X
path                  X   |     X     |     X      |   X   |   -   |    X
rect                  X   |     -     |     X      |   X   |   -   |    X
text                  X   |     X     |     X      |   X   |   X   |    -
svg                   C   |     C     |     C      |   C   |   C   |    C
g                     C   |     C     |     C      |   C   |   C   |    C
marker                C   |     C     |     C      |   C   |   C   |    C
foreignObject         C   |     C     |     C      |   C   |   C   |    C
use                   -   |     -     |     -      |   -   |   -   |    -

X indicates that the collection of attributes applies to that element
- indicates that the collection of attributes does not apply to that element
C indicates that the collection of attributes does not apply to that element
  but may apply to a child element and hence can still be set
-}

-- These core attributes are applicable to every element
type CoreAttributes r = (id :: String, "class" :: String, style :: String, tabIndex :: Int, lang :: String | r)

-- Subset of events that work on Firefox 60/Chromium 66
type GlobalEventAttributes r =
  ( onClick :: MouseEvent
  , onDoubleClick :: MouseEvent
  , onContextMenu :: MouseEvent
  , onKeyDown :: KeyboardEvent
  , onKeyPress :: KeyboardEvent
  , onKeyUp :: KeyboardEvent
  , onMouseDown :: MouseEvent
  , onMouseEnter :: MouseEvent
  , onMouseLeave :: MouseEvent
  , onMouseMove :: MouseEvent
  , onMouseOut :: MouseEvent
  , onMouseOver :: MouseEvent
  , onMouseUp :: MouseEvent
  , onWheel :: WheelEvent
  | r
  )

type GlobalAttributes r = CoreAttributes + GlobalEventAttributes + r

-- Presentation attributes, grouped by applicability (see table above) ---------
type StrokeAttributes r =
  ( stroke :: String
  , strokeDashArray :: String
  , strokeDashOffset :: Number
  , strokeOpacity :: Number
  , strokeWidth :: Number
  | r
  )

type StrokeEndAttributes r =
  ( strokeLineCap :: String
  | r
  )

type StrokeJoinAttributes r =
  ( strokeLineJoin :: String
  , strokeMiterLimit :: String
  | r
  )

type FillAttributes r =
  ( fill :: String
  , fillOpacity :: Number
  | r
  )

type MarkerAttributes r =
  ( markerStart :: String
  , markerMid :: String
  , markerEnd :: String
  | r
  )

type FontAttributes r =
  ( fontFamily :: String
  , fontSize :: String
  , fontSizeAdjust :: Number
  , fontStretch :: String
  , fontStyle :: String
  , fontVariant :: String
  , fontWeight :: String
  | r
  )

type CanBeMaskedAttributes r =
  ( mask :: String
  | r
  )

type AllPresentationAttributes r =
  StrokeAttributes + 
  StrokeJoinAttributes + 
  StrokeEndAttributes +
  FillAttributes +
  FontAttributes +
  MarkerAttributes +
  CanBeMaskedAttributes +
  r

type FilterPrimitiveAttributes r =
  ( x :: Number
  , y :: Number
  , width :: Number
  , height :: Number
  , result :: String
  )