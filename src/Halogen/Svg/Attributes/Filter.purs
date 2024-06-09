module Halogen.Svg.Attributes.Filter where

import Prelude

data FilterInput
  = SourceGraphic 
  | SourceAlpha 
  | BackgroundImage 
  | BackgroundAlpha 
  | FillPaint 
  | StrokePaint 
  | FilterPrimitiveReference String

data FilterUnits = UserSpaceOnUse | ObjectBoundingBox

data PrimitiveUnits = FilterUnits 

data ColorMatrixType
  = Matrix 
  | Saturate 
  | HueRotate 
  | LuminanceToAlpha

data FunctionType
  = Identity 
  | Table 
  | Discrete 
  | Linear 
  | Gamma

data CompositeOperator
  = Over 
  | In 
  | Out 
  | Atop 
  | Xor 
  | Lighter 
  | Arithmetic

data MorphologyOperator = Erode | Dilate

data EdgeMode = Duplicate | Wrap | None

data RGBAChannel = R | G | B | A

data TurbulenceType = FractalNoise | Turbulence
