module Halogen.Svg.Attributes.CSSLength
  ( CSSLength(..)
  , printCSSLength
  ) where

import Prelude

data CSSLength
  = Cm Number
  | Mm Number
  | Inches Number
  | Px Number
  | Pt Number
  | Pc Number
  | Em Number
  | Ex Number
  | Rem Number
  | Vw Number
  | Vh Number
  | Vmin Number
  | Vmax Number
  | Pct Number
  | NoCSSLength

derive instance eqCSSLength :: Eq CSSLength

instance showCSSLength :: Show CSSLength where
  show = case _ of
    Cm i -> "(Cm " <> show i <> ")"
    Mm i -> "(Mm " <> show i <> ")"
    Inches i -> "(Inches " <> show i <> ")"
    Px i -> "(Px " <> show i <> ")"
    Pt i -> "(Pt " <> show i <> ")"
    Pc i -> "(Pc " <> show i <> ")"
    Em i -> "(Em " <> show i <> ")"
    Ex i -> "(Ex " <> show i <> ")"
    Rem i -> "(Rem " <> show i <> ")"
    Vw i -> "(Vw " <> show i <> ")"
    Vh i -> "(Vh " <> show i <> ")"
    Vmin i -> "(Vmin " <> show i <> ")"
    Vmax i -> "(Vmax " <> show i <> ")"
    Pct i -> "(Pct " <> show i <> ")"
    NoCSSLength -> "NoCSSLength"

printCSSLength :: CSSLength -> String
printCSSLength = case _ of
  Cm i -> show i <> "cm"
  Mm i -> show i <> "mm"
  Inches i -> show i <> "in"
  Px i -> show i <> "px"
  Pt i -> show i <> "pt"
  Pc i -> show i <> "pc"
  Em i -> show i <> "em"
  Ex i -> show i <> "ex"
  Rem i -> show i <> "rem"
  Vw i -> show i <> "vw"
  Vh i -> show i <> "vh"
  Vmin i -> show i <> "vmin"
  Vmax i -> show i <> "vmax"
  Pct i -> show i <> "%"
  NoCSSLength -> "0"
