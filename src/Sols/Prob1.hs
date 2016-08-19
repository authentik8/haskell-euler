module Sols.Prob1 (
  solution
) where
  solution = show (sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0])
