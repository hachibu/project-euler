module ProjectEuler.Problem015 (solve) where

factorial :: Integer -> Integer
factorial n = product [1..n]

choose :: Integer -> Integer -> Integer
choose n k = factorial n `div` (factorial (n - k) * factorial k)

solve :: Integer -> Integer
solve n = (n + n) `choose` n
