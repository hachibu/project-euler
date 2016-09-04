module ProjectEuler.Problem024 (solve) where

import Data.List

solve :: [Int]
solve = ps !! n
  where
    ps = sort . permutations $ [0..9]
    n  = 1000000 - 1
