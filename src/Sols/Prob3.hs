module Sols.Prob3 (
  solution
) where

  import Common.Primes (primeFactors)

  solution = show (maximum (primeFactors 600851475143))
