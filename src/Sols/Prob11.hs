module Sols.Prob11 (
  solution
) where

  import Data.List (tails, transpose)

  parseGrid :: String -> [[Int]]
  parseGrid = map (map read . words) . lines

  chunks :: Int -> [a] -> [[a]]
  chunks n line
    | length chunk < n = []
    | otherwise        = chunk : chunks n (tail line)
    where chunk = take n line

  horizontal :: [[Int]] -> [[Int]]
  horizontal = concatMap (chunks 4)

  vertical :: [[Int]] -> [[Int]]
  vertical = horizontal . transpose

  diagonal :: [[Int]] -> [[Int]]
  diagonal = vertical . zipWith drop [0..]

  seDiagonal :: [[Int]] -> [[Int]]
  seDiagonal = concatMap diagonal . tails

  swDiagonal :: [[Int]] -> [[Int]]
  swDiagonal = seDiagonal . map reverse

  maxProduct :: [[Int]] -> Int
  maxProduct = maximum . map product


  solution = do
    txtGrid <- readFile "./data/prob11.txt"
    -- let numGrid = map words (lines txtGrid)
    let numGrid = parseGrid txtGrid
    print $ maxProduct $ concatMap ($numGrid) [horizontal, vertical, seDiagonal, swDiagonal]
