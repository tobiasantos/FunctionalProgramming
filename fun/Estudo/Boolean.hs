module Boolean where

data Boolean = F | T
 deriving (Show)

lor :: Boolean -> Boolean -> Boolean
lor F F = F
lor _   = T

land :: Boolean -> Boolean -> Boolean
land T T = T
land _   = F 
