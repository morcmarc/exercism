module ListOps
  ( length
  , reverse
  , map
  , filter
  , foldr
  , foldl'
  , (++)
  , concat
  ) where

import Prelude hiding
  ( length, reverse, map, filter, foldr, (++), concat )

foldl' :: (b -> a -> b) -> b -> [a] -> b
foldl' _ z []     = z
foldl' f z (x:xs) = foldl' f (f z x) xs

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ z [] = z
foldr f z (x:xs) = f x (foldr f z xs)

length :: [a] -> Int
length = undefined

reverse :: [a] -> [a]
reverse = undefined

map :: (a -> b) -> [a] -> [b]
map = undefined

filter :: (a -> Bool) -> [a] -> [a]
filter = undefined

(++) :: [a] -> [a] -> [a]
xs ++ ys = undefined

concat :: [[a]] -> [a]
concat = undefined
