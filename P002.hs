fibs = 1 : 2 : zipWith (+) fibs (tail fibs)
evenFibs = [x | x <- fibs, x `mod` 2 == 0]

solve :: Integer
solve = sum (takeWhile (< 4000000) evenFibs)

main :: IO ()
main = do
  putStrLn $ "Answer: " ++ show solve
