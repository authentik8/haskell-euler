module Sols.Prob11 (
  solution
) where
  parseLine :: String -> [Int]
  parseLine = map read . words

  parseGrid :: String -> [[Int]]
  parseGrid str
    = map parseLine lineList
    where lineList = lines str

  solution = do
    txtGrid <- readFile "./data/prob11.txt"
    -- let numGrid = map words (lines txtGrid)
    print $ parseGrid txtGrid
