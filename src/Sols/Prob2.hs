module Sols.Prob2 (
  solution
) where

  import Common.Fibonacci (fibLessThan)

  solution = print (sum [x | x <- (fibLessThan 4000000), x `mod` 2 == 0])
