module PureScriptTalk.Effects where

import Control.Monad.Eff
import Control.Monad.Eff.Random
import Debug.Trace


printRandom :: forall eff. Eff (trace :: Trace, random :: Random | eff) Unit
printRandom = do
  n <- random
  print n


eff_main = do
  printRandom
  print "Done."
