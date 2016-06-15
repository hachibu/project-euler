module ProjectEuler.Problem016 (solve) where

import ProjectEuler.Prelude (digits)

solve :: Integer -> Integer
solve = sum . digits
