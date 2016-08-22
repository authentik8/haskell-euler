module Sols.Prob3 (
  solution
) where

  import Common.Primes (primeFactors)

  solution = print (maximum (primeFactors 600851475143))
