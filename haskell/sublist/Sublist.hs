module Sublist where

data Sublist = Equal | Sublist | Superlist | Unequal deriving (Enum, Eq)

sublist :: a -> a -> Sublist
sublist _ _ = Equal