module ProjectEuler.Problem020 (solve) where

import ProjectEuler.Prelude (digits, factorial)

solve :: Integer -> Integer
solve = sum . digits . factorial
