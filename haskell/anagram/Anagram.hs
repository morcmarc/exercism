module Anagram where

import           Data.Char (toLower)
import           Data.List (sort)

same' :: String -> String -> Bool
same' a b = sort al == sort bl && al /= bl
    where 
        al = map toLower a
        bl = map toLower b


anagramsFor :: String -> [String] -> [String]
anagramsFor s = filter (same' s)
