isPalindrome :: Int -> Bool
isPalindrome n = show n == (reverse $ show n)

products = [x * y | x <- [100..999], y <- [100..999]]

solve = maximum [p | p <- products, isPalindrome p]

main = do
  putStrLn $ "Answer: " ++ show solve
