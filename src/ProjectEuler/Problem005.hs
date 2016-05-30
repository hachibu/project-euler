module ProjectEuler.Problem005 (solve) where

import Data.Numbers.Primes

solve :: Integer -> Integer
solve n
  = product 
  $ concatMap (\y -> maximum $ (map . filter) (== y) xs) ys
  where
    xs = map primeFactors [2..n]
    ys = takeWhile (< n) primes
