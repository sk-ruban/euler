isPrime x = [y | y <- [2..x-1], x `mod` y == 0] == []

primes = [x | x <- [2..20], isPrime x]

highestPower n acc
  | n^acc > 20 = n^(acc-1)
  | otherwise = highestPower n (acc+1)

solve = product [highestPower p 1 | p <- primes]

main = do
  putStrLn $ "Answer: " ++ show solve
