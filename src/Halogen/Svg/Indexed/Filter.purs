module Halogen.Svg.Indexed.Filter where

import Prelude

import Halogen.Svg.Attributes.Filter (ColorMatrixType, CompositeOperator, EdgeMode, FilterInput, FilterUnits, FunctionType, MorphologyOperator, PrimitiveUnits, RGBAChannel, TurbulenceType)
import Halogen.Svg.Attributes.Image (CrossOrigin)
import Halogen.Svg.Indexed.Class (AllPresentationAttributes, CoreAttributes, FilterPrimitiveAttributes)
import Type.Row (type (+))

type SVGfilter = 
  CoreAttributes + 
  AllPresentationAttributes +
    ( x :: Number
    , y :: Number
    , width :: Number
    , height :: Number
    , filterUnits :: FilterUnits
    , primitiveUnits :: PrimitiveUnits
    )

-- Filter Primitives
type SVGfeBlend = 
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ( in :: FilterInput
    , in2 :: FilterInput
    , mode :: String
    )

type SVGfeColorMatrix =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ( in :: FilterInput
    , type :: ColorMatrixType
    , values :: Array Number
    )

type SVGfeComponentTransfer =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ( in :: FilterInput
    )

type SVGfeComposite = 
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ( in :: FilterInput
    , in2 :: FilterInput
    , operator :: CompositeOperator
    , k1 :: Number
    , k2 :: Number
    , k3 :: Number
    , k4 :: Number
    )

type SVGfeConvolveMatrix =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ( in :: FilterInput
    , order :: Int
    , kernelMatrix :: Array Number
    , divisor :: Number
    , bias :: Number
    , targetX :: Int
    , targetY :: Int
    , edgeMode :: EdgeMode
    , preserveAlpha :: Boolean
    )

type SVGfeDiffuseLighting =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ( in :: FilterInput
    , surfaceScale :: Number
    , diffuseConstant :: Number
    )

type SVGfeDisplacementMap =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ( in :: FilterInput
    , in2 :: FilterInput
    , scale :: Number
    , xChannelSelector :: RGBAChannel
    , yChannelSelector :: RGBAChannel
    )

type SVGfeDropShadow =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ( in :: FilterInput
    , stdDeviation :: Number
    , dx :: Number
    , dy :: Number
    )

type SVGfeFlood =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
    ()


type SVGfeFuncA =
  CoreAttributes
    ( type :: FunctionType
    , tableValues :: Array Number
    , slope :: Number
    , intercept :: Number
    , amplitude :: Number
    , exponent :: Number
    , offset :: Number
    )
type SVGfeFuncB = SVGfeFuncA
type SVGfeFuncG = SVGfeFuncA
type SVGfeFuncR = SVGfeFuncA


type SVGfeGaussianBlur =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes
    ( in :: FilterInput
    , stdDeviation :: Number
    , edgeMode :: EdgeMode
    )

type SVGfeImage =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes
    ( crossorigin :: CrossOrigin
    , preserveAspectRatio :: String
    )

type SVGfeMerge =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes +
  ()

type SVGfeMergeNode =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes
    ( in :: FilterInput )

type SVGfeMorphology =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes
    ( in :: FilterInput
    , operator :: MorphologyOperator
    , radius :: Number )

type SVGfeOffset =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes
    ( in :: FilterInput
    , dx :: Number
    , dy :: Number
    )

type SVGfeSpecularLighting =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes
    ( in :: FilterInput 
    , surfaceScale :: Number 
    , specularConstant :: Number
    , specularExponent :: Number
    , kernelUnitLength :: Array Number
    )

type SVGfeTile =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes
    ( in :: FilterInput )

type SVGfeTurbulence =
  CoreAttributes + 
  AllPresentationAttributes + 
  FilterPrimitiveAttributes
    ( baseFrequency :: Array Number
    , numOctaves :: Int
    , seed :: Number
    , stitchTiles :: Boolean
    , type :: TurbulenceType
    )


-- Light source elements and properties
type SVGfeDistantLight =
  CoreAttributes + 
    ( azimuth :: Number
    , elevation :: Number
    )

type SVGfePointLight =
  CoreAttributes + 
    ( x :: Number
    , y :: Number
    , z :: Number
    )
    
type SVGfeSpotLight =
  CoreAttributes + 
    ( x :: Number
    , y :: Number
    , z :: Number
    , pointsAtX :: Number
    , pointsAtY :: Number
    , pointsAtZ :: Number
    , specularExponent :: Number
    , limitingConeAngle :: Number
    )
    