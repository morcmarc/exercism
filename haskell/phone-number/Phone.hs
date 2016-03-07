module Phone where

import           Data.Char   as C
import           Text.Printf (printf)

valid :: String -> Bool
valid n
    | length n == 10 = True
    | length n == 11 && head n == '1' = True
    | otherwise = False

clean :: String -> String
clean = filter C.isDigit

areaCode :: String -> String
areaCode = take 3 . clean

number :: String -> String
number n
    | not $ valid $ clean s  = "0000000000"
    | length s == 11 = drop 1 s
    | otherwise      = s
    where s = clean n

prettyPrint :: String -> String
prettyPrint n = printf "(%s) %s-%s" ac fp sp
    where
        s  = number n
        ac = areaCode s
        fp = drop 3 $ take 6 s
        sp = drop 6 s

