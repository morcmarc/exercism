module DNA where

import           Data.Maybe (fromJust)

rnaMap :: [(Char, Char)]
rnaMap = [
    ('C','G'),
    ('G','C'),
    ('T','A'),
    ('A','U')]

toRNA :: String -> String
toRNA = map (\c -> fromJust $ lookup c rnaMap)
