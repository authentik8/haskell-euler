module Common.LCM (
  lcm'
) where
  lcm' :: (Integral a) => [a] -> a
  lcm' = foldl lcm 1
