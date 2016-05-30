module ProjectEuler.Problem017 (solve) where

import Data.Char

toWords :: Int -> String
toWords 00 = "zero"
toWords 01 = "one"
toWords 02 = "two"
toWords 03 = "three"
toWords 04 = "four"
toWords 05 = "five"
toWords 06 = "six"
toWords 07 = "seven"
toWords 08 = "eight"
toWords 09 = "nine"
toWords 10 = "ten"
toWords 11 = "eleven"
toWords 12 = "twelve"
toWords 13 = "thirteen"
toWords 14 = "fourteen"
toWords 15 = "fifteen"
toWords 16 = "sixteen"
toWords 17 = "seventeen"
toWords 18 = "eighteen"
toWords 19 = "nineteen"
toWords 20 = "twenty"
toWords 30 = "thirty"
toWords 40 = "forty"
toWords 50 = "fifty"
toWords 60 = "sixty"
toWords 70 = "seventy"
toWords 80 = "eighty"
toWords 90 = "ninety"
toWords n = if b == 0 then toWords a ++ f
                      else toWords c ++ e ++ toWords b
  where
    a = n `div` d
    b = n `mod` d
    c = n - b
    d | n < 100   = 10
      | n < 1000  = 100
      | n < 10000 = 1000
      | otherwise = undefined
    e | n < 100   = " "
      | n < 1000  = " and "
      | n < 10000 = " "
      | otherwise = undefined
    f | n < 1000  = " hundred"
      | n < 10000 = " thousand"
      | otherwise = undefined

countLetters :: String -> Int
countLetters = length . filter isLetter 

solve :: [Int] -> Int
solve = countLetters . concatMap toWords
