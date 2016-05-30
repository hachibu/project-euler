module ProjectEuler.Problem014
  ( collatzSeq
  , solve
  ) where

import Data.Bits
import Data.List

collatz :: Int -> Int
collatz n
  | even n    = n `shiftR` 1
  | otherwise = 3 * n + 1

collatzSeq :: Int -> [Int]
collatzSeq n = (++) (takeWhile (/= 1) $ iterate collatz n) [1]

solve :: Int
solve
  = fst . last
  $ sortOn snd [(n, length $ collatzSeq n) | n <- [1..999999]]
