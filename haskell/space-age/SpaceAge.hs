module SpaceAge where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune
            deriving (Eq)

ageOn :: (Fractional a) => Planet -> a -> a
ageOn planet sec = 
    case planet of
        Mercury -> eSec /   0.2408467
        Venus   -> eSec /   0.61519726
        Mars    -> eSec /   1.8808158
        Jupiter -> eSec /  11.862615
        Saturn  -> eSec /  29.447498
        Uranus  -> eSec /  84.01684
        Neptune -> eSec / 164.79132
        _       -> eSec
    where eSec = sec / 31557600
