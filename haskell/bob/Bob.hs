module Bob where

import qualified Data.Text as T
import qualified Data.Char as C

isShout :: T.Text -> Bool
isShout s = (T.toUpper s == s) &&
            (T.length $ T.filter C.isAlpha s) > 0

isQuestion :: T.Text -> Bool
isQuestion s = T.last s == '?'

isSilence :: T.Text -> Bool
isSilence s = T.null $ T.strip s

responseFor :: String -> String
responseFor q
    | isSilence s  = "Fine. Be that way!"
    | isShout s    = "Whoa, chill out!"
    | isQuestion s = "Sure."
    | otherwise    = "Whatever."
    where
        s = T.pack q