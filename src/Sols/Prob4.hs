module Sols.Prob4 (
  solution
) where
  solution = show (maximum palindromes)

  targetRange = [10..99]

  multiples = [ x*y | x <- targetRange, y <- targetRange]

  digits :: Integer -> [Integer]
  -- Convert a number to a list of it's digits
  digits n = map (\x -> read [x] :: Integer ) ( show n)

  isPalindrome :: [Integer] -> Bool
  isPalindrome [] = True
  isPalindrome [f] = True
  isPalindrome [f,l] = f == l
  isPalindrome (f:rest)
    | f == l  = isPalindrome mid
    | f /= l  = False
    where
      mid = init rest
      l = last rest

  digitListToInt :: [Integer] -> Integer
  digitListToInt = read . concatMap show

  palindromes = map digitListToInt (filter isPalindrome (map digits multiples))
