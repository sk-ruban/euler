sumOfSquares n = n * (n+1) * (2 * n + 1) `div` 6
squareOfSums n = let s = n * (n + 1) `div` 2 in s^2
solve n = (squareOfSums n) - (sumOfSquares n)

main = do
  putStrLn $ "Test: " ++ show (solve 10)
  putStrLn $ "Answer: " ++ show (solve 100)
