triplets :: [(Int, Int, Int)]
triplets = [(a,b,c) | a <- [1..500], b <- [a..500],
           let c = 1000 - a - b,
           c^2 == a^2 + b^2,
           c >0]

solve = case head triplets of
  (a,b,c) -> a * b * c

main = do
  putStrLn $ "Answer: " ++ show solve
