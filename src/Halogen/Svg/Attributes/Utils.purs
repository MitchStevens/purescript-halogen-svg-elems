module Halogen.Svg.Attributes.Utils
  ( showWithSpaces
  ) where
-- Helper functions used in other modules in Halogen.Svg.Attributes

import Prelude
import Data.String (joinWith)

-- Show each element of an array seperated by spaces
-- E.g., showWithSpaces [1, 2, 3] = "1 2 3"
showWithSpaces :: forall a. Show a => Array a -> String
showWithSpaces xs = joinWith " " (show <$> xs)
