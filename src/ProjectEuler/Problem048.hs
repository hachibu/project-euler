module ProjectEuler.Problem048 (solve) where

import Data.List

solve :: Integer
solve = read $ takeLast 10 (show $ total)
  where
    total = foldl' (\n x -> n + x ^ x) 0 terms
    terms = [1..1000] :: [Integer]

takeLast :: Int -> [a] -> [a]
takeLast n xs = drop (length xs - n) xs
