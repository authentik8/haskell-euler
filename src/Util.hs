module Util
( promptLine
) where

  import System.IO (putStr, getLine)

  promptLine :: String -> IO String
  promptLine prompt = do
    putStr prompt
    getLine
