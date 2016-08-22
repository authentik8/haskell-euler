module Sols.Prob6 (
  solution
) where
  sumOfSquares :: [Integer] -> Integer
  sumOfSquares x = sum (map (^2) x)

  squareOfSum :: [Integer] -> Integer
  squareOfSum x = sum x ^ 2

  inputRange = [1..100]

  solution = print (abs(sumOfSquares inputRange - squareOfSum inputRange))
