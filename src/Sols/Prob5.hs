module Sols.Prob5 (
  solution
) where

  import Common.LCM (lcm')

  solution = show (lcm' ([1..20]))
