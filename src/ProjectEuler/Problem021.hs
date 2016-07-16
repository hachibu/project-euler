module ProjectEuler.Problem021 (solve) where

import Data.List
import Data.Maybe

properDivisors :: Int -> [Int]
properDivisors n = 1 : filter p xs
  where
    p  = (0 ==) . rem n
    xs | odd n     = [3,5..n-1]
       | otherwise = [2,3..n-1]

amicablePairs :: [(Int, Int)]
amicablePairs = catMaybes $ unfoldr (Just . f) 220
  where
    d   = sum . properDivisors
    f a = let b = d a 
           in if a /= b && a == d b then (Just (a, b), b + 1)
                                    else (Nothing,     a + 1)

sumPairs :: [(Int, Int)] -> Int
sumPairs = foldl' (\s (a, b) -> s + a + b) 0

solve :: Int
solve = sumPairs $ take 5 amicablePairs
