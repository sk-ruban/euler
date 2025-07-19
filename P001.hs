solve :: Int -> Int
solve lim = sum [x | x <- [1..lim-1], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = do
  putStrLn $ "Test: " ++ show (solve 10)
  putStrLn $ "Answer: " ++ show (solve 1000)
