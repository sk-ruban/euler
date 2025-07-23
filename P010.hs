isPrime x = null [y | y <- [2..floor(sqrt(fromIntegral x))], x `mod` y == 0]
primes n = [x | x <- [2..n], isPrime x]
solve n = sum (primes n)

main = do
  putStrLn $ "Test: " ++ show (solve 10)
  putStrLn $ "Test: " ++ show (solve 2000000)
