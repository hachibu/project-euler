module ProjectEuler.Problem003 (solve) where

import Data.Numbers.Primes

solve :: Integer -> Integer
solve = maximum . primeFactors
