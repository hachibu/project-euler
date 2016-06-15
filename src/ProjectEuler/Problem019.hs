module ProjectEuler.Problem019 (solve) where

import Data.Time

count :: Eq a => a -> [a] -> Int
count x = length . filter (x ==)

toWeekday :: Day -> String
toWeekday = formatTime defaultTimeLocale "%A"

days :: [Day]
days = [fromGregorian y m 1 | y <- [1901..2000], m <- [1..12]]

solve :: Int
solve = count "Sunday" $ map toWeekday days
