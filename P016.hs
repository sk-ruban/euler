import Data.Char (digitToInt)

solve n = sum [digitToInt x | x <- show (2^n)]

main = do
  putStrLn $ "Test: " ++ show (solve 15)
  putStrLn $ "Answer: " ++ show (solve 1000)
