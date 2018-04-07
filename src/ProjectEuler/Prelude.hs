module ProjectEuler.Prelude where

digits :: Integer -> [Integer]
digits n
  | n == 0    = [0]
  | a == 0    = [b]
  | otherwise = digits a ++ [b]
  where
    a = n `div` 10
    b = n `mod` 10

factorial :: Integer -> Integer
factorial n = product [1..n]

takeLast :: Int -> [a] -> [a]
takeLast n xs = drop (length xs - n) xs

toString :: (Show a) => [a] -> String
toString = concatMap show
