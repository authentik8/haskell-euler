module Sols.Prob12 (
  solution
) where

  import Data.List (group)
  import Common.Primes (primes)

  cumulativeSum :: Integer -> Integer
  cumulativeSum 1 = 1
  cumulativeSum n = n + cumulativeSum (n-1)

  triangles = map cumulativeSum [1..]


  factorize :: Integer -> [Integer]
  factorize n = primeFactors n primes where
      primeFactors 1 _ = []
      primeFactors _ [] = []
      primeFactors m (p:ps) | m < p * p = [m]
                            | r == 0 = p : primeFactors q (p:ps)
                            | otherwise = primeFactors m ps
                            where (q, r) = quotRem m p

  primePowers :: Integer -> [(Integer, Integer)]
  primePowers n = [(head x, toInteger(length x)) | x <- group $ factorize n]

  numDivisors :: Integer ->  Integer
  numDivisors n = product [k + 1 | (_, k) <- primePowers n]

  solution = print $ head $ dropWhile (\n -> numDivisors n <= 500) triangles
