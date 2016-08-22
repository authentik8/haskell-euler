module Sols.Prob7 (
  solution
) where

  import Common.Primes (primes)

  solution = print (primes !! 10000)
