module ProjectEuler.Problem048 (solve) where

import Data.List
import ProjectEuler.Prelude

solve :: Integer
solve = read $ toString $ takeLast 10 $ digits total
  where
    total = foldl' (\n x -> n + x ^ x) 0 terms
    terms = [1..1000]
