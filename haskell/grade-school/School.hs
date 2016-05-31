module School where

import Data.Maybe (isJust, isNothing)

class School where
    add :: Int -> String -> [(Int, [String])] -> [(Int, [String])]
    add grade student school
        | isNothing $ lookup grade school = school
        | otherwise = school