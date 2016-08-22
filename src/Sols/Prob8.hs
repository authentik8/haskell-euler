module Sols.Prob8 (
  solution
) where
  parse :: String -> [Int]
  -- Concatenate the lines of the input file together, then map a function that parses integers over the characters
  parse = map (read . return) . concat . lines

  --
  chunks :: Int -> [a] -> [[a]]
  chunks n l
    | length chunk < n = []
    | otherwise        = chunk : chunks n (tail l)
    where chunk = take n l

  maxProduct :: [[Int]] -> Int
  maxProduct = maximum . map product

  solution = do
    numStr <- readFile "./data/prob8.txt"
    print $ maxProduct $ chunks 13 $ parse numStr
