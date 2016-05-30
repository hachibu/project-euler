module ProjectEuler.Problem016 (solve) where

digits :: Integer -> [Integer]
digits n
  | n == 0    = [0]
  | a == 0    = [b]
  | otherwise = digits a ++ [b]
  where
    a = n `div` 10
    b = n `mod` 10

solve :: Integer -> Integer
solve = sum . digits
