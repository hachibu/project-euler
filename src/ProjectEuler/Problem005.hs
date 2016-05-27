module ProjectEuler.Problem005 (solve) where

divBy :: Integer -> Integer -> Bool
divBy n m = n `mod` m == 0

divByAll :: Integer -> [Integer] -> Bool
divByAll n = all (divBy n)

solve :: Integer
solve = head $ filter (`divByAll` [11..20]) [2,4..]
