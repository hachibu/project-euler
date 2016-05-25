module ProjectEuler.Problem001 (solve) where

multipleOf :: Integer -> Integer -> Bool
multipleOf a b = a `mod` b == 0

solve :: Integer -> Integer
solve n = sum [m | m <- [1..n-1], m `multipleOf` 3 || m `multipleOf` 5]
