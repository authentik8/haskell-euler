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
import qualified Sols.Prob9
import qualified Sols.Prob10
import qualified Sols.Prob11
import qualified Sols.Prob12

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  args <- getArgs
  let problemNumber = read (head args) :: Int
  let solutionList = [
        (1,  Sols.Prob1.solution),
        (2,  Sols.Prob2.solution),
        (3,  Sols.Prob3.solution),
        (4,  Sols.Prob4.solution),
        (5,  Sols.Prob5.solution),
        (6,  Sols.Prob6.solution),
        (8,  Sols.Prob8.solution),
        (7,  Sols.Prob7.solution),
        (9,  Sols.Prob9.solution),
        (10, Sols.Prob10.solution),
        (11, Sols.Prob11.solution),
        (12, Sols.Prob12.solution)
        ]

  let (Just action) = lookup problemNumber solutionList
  action
