module ProjectEuler.Problem004 (solve) where

isPalindrome :: Integer -> Bool
isPalindrome n = reverse xs == xs
  where
    xs = show n

nDigitIntegers :: Integer -> [Integer]
nDigitIntegers n = [10^(n-1)..(10^n)-1]

solve :: Integer -> Integer
solve n = maximum $ filter isPalindrome xs
  where
    xs = [a * b | a <- ys, b <- ys]
    ys = nDigitIntegers n
