module ProjectEuler.Problem012
  ( triangleNums
  , numFactors
  , solve
  ) where

import Data.Function
import Data.List
import Data.Numbers.Primes

triangleNums :: [Int]
triangleNums = map (\n -> sum [1..n]) [1..]

groupCount :: Eq a => [a] -> [Int]
groupCount = map length . group

-- http://www.wikihow.com/Find-How-Many-Factors-Are-in-a-Number
numFactors :: Int -> Int
numFactors = product . map succ . groupCount . primeFactors

solve :: Int
solve = fst
      $ head
      $ last
      $ groupBy ((==) `on` snd)
      $ sortOn snd
      $ takeWhile ((< 600) . snd) [(n, numFactors n) | n <- triangleNums]
