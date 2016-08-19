module Main where

import System.IO
import Util (promptLine)
import qualified Prob1
import qualified Prob2

solveProblem :: String -> String
solveProblem strProblemNumber
  | problemNumber == 1 = Prob1.solution
  | problemNumber == 2 = Prob2.solution
  | otherwise          = "Not solved yet"
  where problemNumber = read strProblemNumber :: Int

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  problemNumber <- promptLine "Enter problem number: "
  putStrLn (solveProblem problemNumber)
