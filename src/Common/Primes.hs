module Common.Primes (
  primes,
  primeFactors
) where

  import qualified Data.Set as PQ
  import Data.Maybe (mapMaybe)

  primes :: [Integer]

  primes = 2:sieve [3,5..]
    where

      sieve (x:xs) = x : sieve' xs (insertprime x xs PQ.empty)

      sieve' (x:xs) table
          | nextComposite == x = sieve' xs (adjust x table)
          | otherwise          = x : sieve' xs (insertprime x xs table)
        where
          (nextComposite,_) = PQ.findMin table

      adjust x table
          | n == x    = adjust x (PQ.insert (n', ns) newPQ)
          | otherwise = table
        where
          Just ((n, n':ns), newPQ) = PQ.minView table

      insertprime p xs = PQ.insert (p*p, map (*p) xs)

  divFully :: Integer -> Integer -> Integer
  -- Divide `n` as many times as possible by q
  divFully n q
    | n `mod` q == 0 = divFully (n `div` q) q
    | otherwise      = n

  primeFactors :: Integer -> [Integer]
  primeFactors =
    divisors primes
    where
      divisors :: [Integer] -> Integer -> [Integer]
      divisors _ 1      = [] -- no more divisors
      divisors (p:ps) n
        | p^2 > n       = [n] -- no more divisors, `n` must be prime
        | n' < n        = p : divisors ps n' -- successfully divides
        | otherwise     = divisors ps n'     -- doesn't divide
        where
          n' = divFully n p
