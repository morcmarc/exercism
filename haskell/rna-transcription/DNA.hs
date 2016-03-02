module DNA where

import Data.Maybe (fromJust)

rnaMap = [
    ('C','G'), 
    ('G','C'), 
    ('T','A'), 
    ('A','U')]

toRNA :: String -> String
toRNA dna = map (\c -> fromJust $ lookup c rnaMap) dna