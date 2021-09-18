module Halogen.Svg.Attributes.Orient
  ( Orient(..)
  , printOrient
  ) where

import Prelude

data Orient
  = AutoOrient
  | AutoStartReverse

derive instance eqOrient :: Eq Orient

instance showOrient :: Show Orient where
  show = case _ of
    AutoOrient -> "AutoOrient"
    AutoStartReverse -> "AutoStartReverse"

printOrient :: Orient -> String
printOrient = case _ of
  AutoOrient -> "auto"
  AutoStartReverse -> "auto-start-reverse"
