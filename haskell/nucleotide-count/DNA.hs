module DNA where

import           Data.Map    (Map, fromList)
import           Text.Printf

nucleotides :: String
nucleotides = ['A', 'G', 'C', 'T']

getInvalid :: String -> String
getInvalid = filter (`notElem` nucleotides)

aNucleotide :: Char -> Bool
aNucleotide c = c `elem` nucleotides

count :: Char -> String -> Int
count c n
    | not $ aNucleotide c
    = error . printf "invalid nucleotide '%c'" $ c
    | not $ null invalids
    = error . printf "invalid nucleotide '%c'" . head $ invalids
    | otherwise
    = length $ filter (== c) n
    where invalids = getInvalid n

nucleotideCounts :: String -> Map Char Int
nucleotideCounts s
    | not $ null invalids
    = error . printf "invalid nucleotide '%c'" . head $ invalids
    | otherwise
    = fromList $ map (\n -> (n, count n s)) nucleotides
    where invalids = getInvalid s
