isPrime 2 = True
isPrime x
  | even x = False
  | otherwise = [y | y <- [3,5..floor(sqrt(fromIntegral x))], x `mod` y == 0] == []
primes = [x | x <- [2..], isPrime x]
solve n = primes !! (n-1)

main = do
  putStrLn $ "Test: " ++ show (solve 6)
  putStrLn $ "Answer: " ++ show (solve 10001)
