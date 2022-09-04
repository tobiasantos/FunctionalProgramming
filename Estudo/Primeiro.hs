module Primeiro where

five :: Integer
five = 5

addFive :: Integer -> Integer
addFive x = five + x

f :: Integer -> Integer
f x = addFive x + addFive x

sempreSix :: Integer -> Integer
sempreSix x = 6

zeroto :: Int -> [Int]
zeroto n = [0..n]
