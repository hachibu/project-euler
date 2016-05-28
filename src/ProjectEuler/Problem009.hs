module ProjectEuler.Problem009 (solve) where

import Data.Maybe
import Data.Ratio

isWhole :: Double -> Bool
isWhole n = (denominator . toRational) n == 1

solveM :: (Int, Int) -> Maybe Int
solveM (x, y)
  | isWhole m = Just $ floor m
  | otherwise = Nothing
  where 
    a = fromIntegral x
    b = fromIntegral y
    m = (-a + sqrt (a ^ (2 :: Int) + (2 * b))) / 2

solveMN :: Int -> Maybe (Int, Int)
solveMN x
  | null ys   = Nothing
  | otherwise = Just $ head ys
  where
    ys = [(fromJust m, n) | n <- [1..x], let m = solveM (n, x), isJust m]

pythagoreanTriple :: (Int, Int) -> Maybe (Int, Int, Int)
pythagoreanTriple (x, y)
  | y > x || all (< 1) [x, y, a, b, c] = Nothing
  | otherwise                          = Just pt
  where
    e = 2 :: Int
    pt@(a, b, c) = (x ^ e - y ^ e, 2 * x * y, x ^ e + y ^ e)

pythagoreanTripleFromSum :: Int -> Maybe (Int, Int, Int)
pythagoreanTripleFromSum x = maybe Nothing pythagoreanTriple (solveMN x)

solve :: Int -> Maybe Int
solve x = (\(a, b, c) -> a * b * c) <$> pythagoreanTripleFromSum x
