module Main where

import System.IO
import Util (promptLine)

solveProblem :: String -> String
solveProblem strProblemNumber
  | otherwise          = "Not solved yet"
  where problemNumber = read strProblemNumber :: Int

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  problemNumber <- promptLine "Enter problem number: "
  putStrLn (solveProblem problemNumber)
