module Sols.Prob13 (
  solution
) where
  parseNumbers :: String -> [Integer]
  parseNumbers txt = map read txtLines
    where txtLines = lines txt

  solution = do
    nums <- readFile "./data/prob13.txt"
    print $ take 10 $ show $ sum $ parseNumbers nums
