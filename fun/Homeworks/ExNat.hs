module ExNat where

-- Do not alter this import!
import Prelude
    ( Show(..)
    , Eq(..)
    , Ord(..)
    , Num(..)
    , Integral
    , Bool(..)
    , not
    , (&&)
    , (||)
    , (++)
    , ($)
    , (.)
    , undefined
    , error
    , otherwise
    )

-- Define evenerything that is undefined,
-- without using standard Haskell functions.
-- (Hint: recursion is your friend!)

data Nat = Zero | Succ Nat

instance Show Nat where

    -- zero  should be shown as O
    -- three should be shown as SSSO
    show Zero     = "O"
    show (Succ m) = "S" ++ show m

instance Eq Nat where

    (==) Zero     Zero     = True
    (==) (Succ m) (Succ n) = (==) m n
    (==) _        _        = False  

instance Ord Nat where

    (<=)  Zero     _       = True
    (<=)  _        Zero    = False
    (<=) (Succ m) (Succ n) = (<=) m n

    -- Ord does not REQUIRE defining min and max.
    -- Howevener, you should define them WITHOUT using (<=).
    -- Both are binary functions: max m n = ..., etc.

    min = undefined

    max = undefined

isZero :: Nat -> Bool
isZero Zero = True
isZero _    = False

-- pred is the predecessor but we define zero's to be zero
pred :: Nat -> Nat
pred Zero     = Zero
pred (Succ m) = m 

even :: Nat -> Bool
even Zero            = True
even (Succ (Succ m)) = even m
even _               = False

odd :: Nat -> Bool
odd (Succ Zero)     = True
odd (Succ (Succ m)) = odd m
odd _               = False

-- addition
(<+>) :: Nat -> Nat -> Nat
(<+>) n Zero     = n
(<+>) n (Succ m) = Succ ((<+>) n m) 

-- This is called the dotminus or monus operator
-- (also: proper subtraction, arithmetic subtraction, ...).
-- It behaves like subtraction, except that it returns 0
-- when "normal" subtraction would return a negative number.
(<->) :: Nat -> Nat -> Nat
(<->) Zero     x        = Zero
(<->) x        Zero     = x
(<->) (Succ m) (Succ n) = (<->) m n


-- multiplication
(<*>) :: Nat -> Nat -> Nat
(<*>) = undefined

-- exponentiation
(<^>) :: Nat -> Nat -> Nat
(<^>) = undefined

-- quotient
(</>) :: Nat -> Nat -> Nat
(</>) = undefined

-- remainder
(<%>) :: Nat -> Nat -> Nat
(<%>) = undefined

-- divides
(<|>) :: Nat -> Nat -> Bool
(<|>) = undefined

divides = (<|>)


-- x `absDiff` y = |x - y|
-- (Careful here: this - is the real minus operator!)
absDiff :: Nat -> Nat -> Nat
absDiff = undefined

(|-|) = absDiff

factorial :: Nat -> Nat
factorial = undefined

-- signum of a number (-1, 0, or 1)
sg :: Nat -> Nat
sg = undefined

-- lo b a is the floor of the logarithm base b of a
lo :: Nat -> Nat -> Nat
lo = undefined


--
-- For the following functions we need Num(..).
-- Do NOT use the following functions in the definitions above!
--

toNat :: Integral a => a -> Nat
toNat = undefined

fromNat :: Integral a => Nat -> a
fromNat = undefined


-- Obs: we can now easily make Nat an instance of Num.
instance Num Nat where

    (+) = (<+>)
    (*) = (<*>)
    (-) = (<->)
    abs n = n
    signum = sg
    fromInteger x
        | x < 0     = undefined
        | x == 0    = undefined
        | otherwise = undefined

