module ProjectEuler.Problem010 (solve) where

import Data.Numbers.Primes

sumWhile :: (Integer -> Bool) -> [Integer] -> Integer
sumWhile p = sum . takeWhile p

solve :: Integer -> Integer
solve n = sumWhile (< n) primes
