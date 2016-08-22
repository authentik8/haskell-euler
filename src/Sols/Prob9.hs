module Sols.Prob9 (
  solution
) where
  -- Calculate product of triple
  solution = print $ product solutionTriple

  -- Filter the list of pythagorean triples to find the one with elements adding up to 1000
  solutionTriple = head $ filter (\x -> sum x == 1000) triplet

  -- Produce a list of pythagorean triples
  triplet = [[a, b, c] | c <- [1..],
                         a <- [1..c],
                         b <- [1..c],
                         a^2 + b^2 == c^2, a < b]
