module Gigasecond (fromDay) where

import Data.Time.Clock (UTCTime, addUTCTime)

fromDay :: UTCTime -> UTCTime
fromDay d = addUTCTime (10^9) d