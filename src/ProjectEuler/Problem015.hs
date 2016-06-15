module ProjectEuler.Problem015 (solve) where

import ProjectEuler.Prelude (factorial)

choose :: Integer -> Integer -> Integer
choose n k = factorial n `div` (factorial (n - k) * factorial k)

solve :: Integer -> Integer
solve n = (n + n) `choose` n
