module ProjectEuler.Problem004 (solve) where

import Data.List

naturalNumbers :: [Integer]
naturalNumbers = [0..]

powersOf :: Integer -> [Integer]
powersOf n = map (n^) naturalNumbers

integerInits :: Integer -> [Integer]
integerInits n = takeWhile (> 0) [a `div` b | a <- repeat n, b <- powersOf 10]

reverseInteger :: Integer -> Integer
reverseInteger n = foldl' (\b a -> 10 * b + a `mod` 10) 0 (integerInits n)

isPalindrome :: Integer -> Bool
isPalindrome n = reverseInteger n == n

nDigitIntegers :: Integer -> [Integer]
nDigitIntegers n = [10^(n-1)..(10^n)-1]

solve :: Integer -> Integer
solve n = maximum $ filter isPalindrome xs
  where
    xs = [a * b | a <- ys, b <- ys]
    ys = nDigitIntegers n
