-- | Note: an element may contain more attributes than what
-- | we currently allow in its corresponding `SVGelemName`.
module Halogen.Svg.Indexed
  ( AnimationAttributes
  , SVGanimate
  , SVGanimateMotion
  , SVGcircle
  , SVGellipse
  , SVGforeignObject
  , SVGg
  , SVGimage
  , SVGline
  , SVGmarker
  , SVGmask
  , SVGmpath
  , SVGpath
  , SVGpattern
  , SVGpolygon
  , SVGpolyline
  , SVGrect
  , SVGset
  , SVGstop
  , SVGsvg
  , SVGtext
  , SVGtitle
  , SVGuse
  , module Halogen.Svg.Indexed.Class
  , module Halogen.Svg.Indexed.Filter
  , module Halogen.Svg.Indexed.Gradient
  )
  where


import Halogen.Svg.Indexed.Class
import Halogen.Svg.Indexed.Filter
import Halogen.Svg.Indexed.Gradient

import Halogen.Svg.Attributes (Color)
import Halogen.Svg.Indexed.Class (AllPresentationAttributes, CanBeMaskedAttributes, CoreAttributes, FillAttributes, FontAttributes, GlobalAttributes, MarkerAttributes, StrokeAttributes, StrokeJoinAttributes, StrokeEndAttributes)
import Type.Row (type (+))
import Web.UIEvent.KeyboardEvent (KeyboardEvent)
import Web.UIEvent.MouseEvent (MouseEvent)
import Web.UIEvent.WheelEvent (WheelEvent)


-- Specific SVG elements -------------------------------------------------------
type SVGsvg = GlobalAttributes + AllPresentationAttributes +
  ( width :: Number
  , height :: Number
  , viewBox :: String
  , preserveAspectRatio :: String
  )



type SVGg = GlobalAttributes + AllPresentationAttributes
  + (transform :: String)

type SVGforeignObject = GlobalAttributes + AllPresentationAttributes
  +
    ( x :: Number
    , y :: Number
    , height :: Number
    , width :: Number
    )

type SVGmarker = GlobalAttributes + AllPresentationAttributes
  +
    ( markerWidth :: Number
    , markerHeight :: Number
    , strokeWidth :: Number
    , refX :: Number
    , refY :: Number
    , orient :: String
    , markerUnits :: String
    , viewBox :: String
    )

type SVGmask = GlobalAttributes + AllPresentationAttributes
  +
    ( transform :: String
    , x :: Number
    , y :: Number
    , width :: Number
    , height :: Number
    , maskUnits :: String
    , maskContentsUnits :: String
    )

type SVGcircle = GlobalAttributes + CanBeMaskedAttributes + StrokeAttributes + FillAttributes + MarkerAttributes
  +
    ( cx :: Number
    , cy :: Number
    , r :: Number
    , transform :: String
    )

type SVGellipse = GlobalAttributes + CanBeMaskedAttributes + StrokeAttributes + FillAttributes + MarkerAttributes
  +
    ( cx :: Number
    , cy :: Number
    , rx :: Number
    , ry :: Number
    , transform :: String
    )

type SVGline = GlobalAttributes + CanBeMaskedAttributes + StrokeAttributes + StrokeEndAttributes + MarkerAttributes
  +
    ( x1 :: Number
    , y1 :: Number
    , x2 :: Number
    , y2 :: Number
    , transform :: String
    )

type SVGpolyline =
  GlobalAttributes +
  CanBeMaskedAttributes +
  StrokeAttributes +
  StrokeEndAttributes +
  MarkerAttributes +
  FillAttributes +
    ( points :: String
    , pathLength :: Number
    )

type SVGpolygon = 
  GlobalAttributes + 
  CanBeMaskedAttributes + 
  StrokeAttributes + 
  StrokeEndAttributes + 
  MarkerAttributes + 
  FillAttributes +
    ( points :: String
    , pathLength :: Number
    )

type SVGpath = 
  GlobalAttributes + 
  CanBeMaskedAttributes + 
  StrokeAttributes + 
  StrokeEndAttributes +
  StrokeJoinAttributes +
  FillAttributes +
  MarkerAttributes +
    ( d :: String
    , transform :: String
    )

type SVGpattern = GlobalAttributes
  +
    ( height :: Number
    , href :: String
    , patternContentUnits :: String
    , patternTransform :: String
    , patternUnits :: String
    , preserveAspectRatio :: String
    , viewBox :: String
    , width :: Number
    , x :: Number
    , xlinkHref :: String
    , y :: Number
    )

type SVGrect = GlobalAttributes + CanBeMaskedAttributes + StrokeAttributes + StrokeJoinAttributes
  + FillAttributes
  + MarkerAttributes
  +
    ( x :: Number
    , y :: Number
    , rx :: Number
    , ry :: Number
    , width :: Number
    , height :: Number
    , transform :: String
    )

type SVGtext = GlobalAttributes + CanBeMaskedAttributes + StrokeAttributes + StrokeEndAttributes
  + StrokeJoinAttributes
  + FillAttributes
  + FontAttributes
  +
    ( x :: Number
    , y :: Number
    , textAnchor :: String
    , dominantBaseline :: String
    , transform :: String
    )

type SVGuse = GlobalAttributes + CanBeMaskedAttributes + StrokeAttributes + StrokeEndAttributes
  + StrokeJoinAttributes
  + FillAttributes
  + FontAttributes
  +
    ( x :: Number
    , y :: Number
    , width :: Number
    , height :: Number
    , transform :: String
    , href :: String
    )

--------------------------------------------------------------------------------

type AnimationAttributes r = GlobalAttributes
  ( from :: String
  , to :: String
  , begin :: String
  , dur :: String
  , repeatCount :: String
  , fill :: String
  | r
  )

{- ^ Unlike `fill` in `GlobalAttributes`, `fill` in `AnimationAttributes` is
intended to record a `FillState` via `fillAnim`. -}

type SVGanimate = AnimationAttributes (attributeName :: String)

type SVGanimateMotion = AnimationAttributes (path :: String)

type SVGset = CoreAttributes + AnimationAttributes ()

type SVGstop = CoreAttributes + AnimationAttributes
  ( offset :: String
  , stopColor :: Color
  , stopOpacity :: Number
  )

type SVGimage = GlobalAttributes
  ( x :: Number
  , y :: Number
  , width :: Number
  , height :: Number
  , href :: String
  , preserveAspectRatio :: String
  )

-- TODO should this have GlobalAttributes?
type SVGmpath = (xlinkHref :: String)

type SVGtitle = GlobalAttributes ()
