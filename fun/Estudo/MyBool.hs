module MyBool where

data Boolean = F | T deriving (Show)

lnot :: Boolean -> Boolean
lnot F = T
lnot _ = F

ifthenelse :: Boolean -> a -> a -> a
ifthenelse T x _ = x
ifthenelse _ _ y = y

-- if (1 > 2) then "bepbop" else "bopbep" 
