largestPrime n =
  let smallestPrime = head [x | x <- [2..], n `mod` x == 0]
  in if n == smallestPrime
  then n
  else largestPrime (n `div` smallestPrime)

solve = largestPrime 600851475143

main = do
  putStrLn $ "Answer: " ++ show solve
