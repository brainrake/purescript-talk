module PureScriptTalk.Records where

import Debug.Trace


type Person = {
  first_name :: String,
  last_name :: String }

chuck = {
  first_name: "Chuck",
  last_name: "Foo",
  age: 20
}
larry = {
  first_name: "Larry",
  last_name: "Bar",
  location: "Budapest"
}

full_name p = p.first_name ++ " " ++ p.last_name

updatelocation p = p {location: "Nowhere"}



r_main = do
  print $ full_name chuck
  print $ full_name (larry {last_name = "Baz"})
