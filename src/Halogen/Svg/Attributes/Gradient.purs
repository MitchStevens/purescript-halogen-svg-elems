module Halogen.Svg.Attributes.Gradient where

import Prelude

data GradientUnits = UserSpaceOnUse | ObjectBoundingBox

instance Show GradientUnits where
  show = case _ of
    UserSpaceOnUse -> "userSpaceOnUse"
    ObjectBoundingBox -> "objectBoundingBox"

data SpreadMethod = Pad | Reflect | Repeat

instance Show SpreadMethod where
  show = case _ of
    Pad -> "pad"
    Reflect -> "reflect"
    Repeat -> "repeat"