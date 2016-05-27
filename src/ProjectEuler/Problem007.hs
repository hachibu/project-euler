module ProjectEuler.Problem007 (solve) where

import Data.Numbers.Primes

solve :: Int -> Integer
solve n = primes !! (n - 1)
