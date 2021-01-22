-- recursion with memoization
fib :: Int -> Integer
fib = (map fib' [0..] !!)
    where fib' 0 = 0
          fib' 1 = 1
          fib' 2 = 2
          fib' n = fib (n-2) + fib (n-1)

solve = sum [ x | x <- takeWhile (<= 4000000) (map fib [0..]), even x]