module PureScriptTalk.Do where

import Data.Array


arr = do
  x <- [1, 2, 3]
  y <- [-1, 0, 1]
  return $ x * y


arr' =
  [1, 2, 3] >>= \x ->
    [-1, 0, 1] >>= \y ->
      return (x * y)
