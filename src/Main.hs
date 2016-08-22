module Main where

import System.IO
import System.Environment (getArgs)
import Util (promptLine)
import qualified Sols.Prob1
import qualified Sols.Prob2
import qualified Sols.Prob3
import qualified Sols.Prob4
import qualified Sols.Prob5
import qualified Sols.Prob6
import qualified Sols.Prob7
import qualified Sols.Prob8

solveProblem :: String -> IO ()
solveProblem strProblemNumber
  | problemNumber == 1 = Sols.Prob1.solution
  | problemNumber == 2 = Sols.Prob2.solution
  | problemNumber == 3 = Sols.Prob3.solution
  | problemNumber == 4 = Sols.Prob4.solution
  | problemNumber == 5 = Sols.Prob5.solution
  | problemNumber == 6 = Sols.Prob6.solution
  | problemNumber == 7 = Sols.Prob7.solution
  | problemNumber == 8 = Sols.Prob8.solution
  | otherwise          = print "Not solved yet"
  where problemNumber = read strProblemNumber :: Int

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  args <- getArgs
  let problemNumber = head args
  solveProblem problemNumber
