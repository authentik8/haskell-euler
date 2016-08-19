module Common.Fibonacci (
  fib,
  fibSeq,
  fibLessThan
) where
  fib n = if n > 1
            then fib (n-1) + fib(n-2)
          else
            1

  fibSeq = [fib n | n <- [1..]]

  fibLessThan x = takeWhile (< x) fibSeq
