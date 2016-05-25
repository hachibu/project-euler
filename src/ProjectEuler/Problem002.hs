module ProjectEuler.Problem002 (fibs, solve) where

fibs :: Int -> [Integer]
fibs n = foldl fib [0,1] [2..n-1]
  where
    fib :: [Integer] -> Int -> [Integer]
    fib a m = a ++ [a !! (m-1) + a !! (m-2)]

solve :: Integer
solve = sum [n | n <- fibs 50, n < 4000000, even n]
