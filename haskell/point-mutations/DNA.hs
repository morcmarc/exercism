module DNA where

hammingDistance :: String -> String -> Int
hammingDistance a b =
      length
    $ filter not
    $ zipWith (==) a b
