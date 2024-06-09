module Halogen.Svg.Attributes.Path.Algebraic where

import Prelude

import Data.Array as A
import Data.Number (cos, sin)
import Data.Tuple (Tuple(..))
import Halogen.Svg.Attributes.Path (CommandArcChoice, CommandPositionReference(..), CommandSweepChoice, PathCommand)
import Halogen.Svg.Attributes.Path as P

type Point = { x :: Number, y :: Number }

data RelativePathCommandF a
  = M { dp :: a }
  | L { dp :: a }
  | C { dp :: a, dp1 :: a, dp2 :: a }
  | S { dp :: a, dp2 :: a }
  | Q { dp :: a, dp1 :: a }
  | T { dp :: a }
  | A { r :: Point, rotation :: Number, largeArcFlag :: CommandArcChoice, sweepFlag :: CommandSweepChoice, dp :: a }
derive instance Functor RelativePathCommandF

type RelativePathCommand = RelativePathCommandF Point

{-
  rotate x <<< rotate y = rotate (x+y)
  rotate x = rotate (x + 2pi)
-}
rotate :: Number -> RelativePathCommand -> RelativePathCommand
rotate theta = map \{ x, y } -> {x: x * cos theta + y * sin theta, y: y * cos theta - x * sin theta }

toPathCommandArray :: Array RelativePathCommand -> Array PathCommand
toPathCommandArray relativeCommands = [P.m Abs 0.0 0.0] <> map f relativeCommands <> [ P.z ]
  where
    f :: RelativePathCommand -> PathCommand
    f = case _ of
      M { dp } -> P.m Rel dp.x dp.y
      L { dp } -> P.l Rel dp.x dp.y
      C { dp, dp1, dp2 } -> P.c Rel dp.x dp.y dp1.x dp1.y dp2.x dp2.y
      S { dp, dp2 } -> P.s Rel dp.x dp.y dp2.x dp2.y
      Q { dp, dp1 } -> P.q Rel dp.x dp.y dp1.x dp1.y
      T { dp } -> P.t Rel dp.x dp.y
      A { r, rotation, largeArcFlag, sweepFlag, dp } ->
        P.a Rel r.x r.y rotation largeArcFlag sweepFlag dp.x dp.y