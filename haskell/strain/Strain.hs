module Strain where

import           Data.List

keep :: (Eq a) => (a -> Bool) -> [a] -> [a]
keep _ [] = []
keep f (x:xs)
    | f x       = x : keep f xs
    | otherwise = keep f xs

discard :: (Eq a) => (a -> Bool) -> [a] -> [a]
discard f x = x \\ keep f x
