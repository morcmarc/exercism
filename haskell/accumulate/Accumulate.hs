module Accumulate where

accumulate :: (Show a) => (a -> a) -> [a] -> [a]
accumulate _ [] = []
accumulate f x  = [f y | y <- x]