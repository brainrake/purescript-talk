module PureScriptTalk.TypeClasses where

import Data.Maybe
import Debug.Trace


class Noise a where
  noise :: a -> String

data Cat = Cat | Kitten



instance noiseCat :: Noise Cat where
  noise cat = "Meow!"

-- noise Cat  --> "Meow!"




instance noiseNumber :: Noise Number where
  noise n = "Um Num " ++ show n ++ "!"

-- noise 5 --> "Um Num 5!"




instance noiseMaybe :: (Noise a) => Noise (Maybe a) where
  noise (Just a) = "Yep, " ++ noise a ++ "!"
  noise (Nothing) = "Nada."

-- noise (Just 1) --> "Yep, Um Num 1!!"




nan :: Maybe Number
nan = Nothing


tc_main = do
  print $ noise Cat      --> "Meow!"
  print $ noise 5        --> "Um Num 5!"
  print $ noise (Just 1) --> "Yep, Um Num 1!!"
  print $ noise nan      --> "Nada."
