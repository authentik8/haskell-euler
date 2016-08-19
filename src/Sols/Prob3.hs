module Sols.Prob3 (
  solution
) where

  import Common.Primes (primes)

  solution = show ( take 3 primes )
