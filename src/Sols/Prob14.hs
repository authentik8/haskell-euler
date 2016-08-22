module Sols.Prob14 (
  solution
) where

  import Data.List (unfoldr, find)

  collatz :: Integer -> [Integer]
  collatz n = n : unfoldr (\x -> if x == 1 then Nothing
                             else
                               if x `mod` 2 == 0 then Just (x `div` 2, x `div` 2)
                               else Just (3 * x + 1, 3 * x + 1)
                    ) n


  collatzChains = [collatz n | n <- [2..999999]]

  chainLengths = map length collatzChains

  zipped = zip chainLengths (map head collatzChains)

  maxLength = maximum (map fst zipped)

  solution = print $ find (\(l, x) -> l == maxLength) zipped
