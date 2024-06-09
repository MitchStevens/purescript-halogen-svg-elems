module Halogen.Svg.Indexed.Gradient where

import Prelude

import Type.Row (type (+))
import Halogen.Svg.Indexed.Class

type GradientAttributes r =
  ( gradientUnits :: String
  , gradientTransform :: String
  , href :: String
  , spreadMethod :: String
  | r
  )

type SVGlinearGradient = 
  CoreAttributes + 
  GlobalEventAttributes + 
  StrokeAttributes + 
  GradientAttributes
    ( x1 :: Number
    , y1 :: Number
    , x2 :: Number
    , y2 :: Number
    )

type SVGradialGradient = 
  CoreAttributes + 
  GlobalEventAttributes + 
  StrokeAttributes + 
  GradientAttributes
    ( cx :: Number
    , cy :: Number
    , fr :: Number
    , fx :: Number
    , fy :: Number
    )