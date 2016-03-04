module SumOfMultiples where

import Data.List (nub)

multiples :: Integer -> Integer -> [Integer]
multiples n x = filter (\y -> y `mod` x == 0) [x .. (n-1)]

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples xs n = 
      sum 
    $ nub 
    $ concatMap (multiples n) xs

sumOfMultiplesDefault :: Integer -> Integer
sumOfMultiplesDefault = sumOfMultiples [3, 5]