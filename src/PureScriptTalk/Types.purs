module PureScriptTalk.Types where

import Data.Maybe
import Debug.Trace


-- data Boolean = True | False

-- data Status = Running | Waiting | Done

-- data Maybe a = Just a | Nothing

-- data Result e a = Err e | Data a


data Tree a = Node (Tree a) (Tree a)
            | Leaf a


mytree :: Tree (Maybe Number)
mytree =
  (Node
    (Leaf (Just 1))
    (Node
      (Leaf Nothing)
      (Leaf (Just 3)) ))


getLeafValue :: forall a. Tree (Maybe a) -> Maybe a
getLeafValue tree =
  case tree of
    (Leaf (Just x)) -> Just x
    _               -> Nothing



getLeafValue' (Leaf (Just x)) = Just x
getLeafValue' _               = Nothing



t_main = do
  print $ getLeafValue (Leaf (Just 1))
  print $ getLeafValue mytree
