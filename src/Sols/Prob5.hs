module Sols.Prob5 (
  solution
) where

  import Common.LCM (lcm')

  solution = print (lcm' ([1..20]))
