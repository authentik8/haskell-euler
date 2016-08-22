module Sols.Prob10 (
  solution
) where
  import Common.Primes (primes)
  solution = print $ sum $ takeWhile (< 2000000) primes
