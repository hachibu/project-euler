module ProjectEuler.Problem006 (solve) where

square :: Integer -> Integer
square n = n * n

sumSquare :: [Integer] -> Integer
sumSquare = square . sum

squareSum :: [Integer] -> Integer
squareSum = sum . map square

solve :: [Integer] -> Integer
solve xs = sumSquare xs - squareSum xs
