module Hutton3 where


-- Exercicios do Hutton - Capítulo 3

--1 What are the types of the follwing values?

--['a', 'b', 'c'] :: [Char]
--('a', 'b', 'c') :: (Char, Char, Char)
--[(False, '0'),(True, '1')] :: [(Bool, Char)]
--([False, True],['0','1']) :: ([Bool], [Char])
--[tail, init, reverse] :: [a]

-- 2 Write down definitions that have the following types

bools :: [Bool]
bools = [True, False]

nums :: [[Int]]
nums = [[1, 2, 3],[4,5,6]]

add :: Int -> Int -> Int -> Int
add a b c = a + b + c

copy :: a -> (a,a)
copy x = (x, x)

apply :: (a -> b) -> a -> b
apply f x = f x

-- para entender melhor como definir funções
--firstLetter :: (Char, Char) -> Char
--firstLetter (x, y) = x

-- 3 What are the types of the following functions?

second :: [a] -> a
second xs = head (tail xs)

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

pair :: a -> b -> (a, b)
pair x y = (x, y)

double :: Num a => a -> a
double x = x*2

palindrome :: [Char] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f  x)

-- 5 Why is not feasible in general for functions types to be instances of the Eq class? When is it feasible?
--
-- Para uma igualdade entre funções ser válida, é preciso que entradas iguais impliquem em saídas iguais.
-- No entanto, é invíavel verificar se TODAS as entradas possíveis implicam em saídas iguais em ambas funções.
