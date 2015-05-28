module Test.Main where

import Test.Unit
import Data.Maybe
import PureScriptTalk.Types
import PureScriptTalk.TypeClasses


main = runTest do
  test "Types" do
    assert "getLeafValue" $ (getLeafValue (Leaf (Just 1))) == Just 1
  test "TypeClasses" do
    assert "cat noise" $ (noise Cat) == "Meow!"
    assert "number noise" $ (noise 5) == "Um Num 5!"
    assert "maybe noise" $ (noise (Just 5)) == "Yep, Um Num 5!!"

