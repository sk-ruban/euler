// Sum Square Difference

func squareOfSum(_ num: Int) -> Int {
    (num / 2) * (num + 1) * (num / 2) * (num + 1)
}

func sumOfSquare(_ num: Int) -> Int {
    num * (num + 1) * (2 * num + 1) / 6
}

print(squareOfSum(100) - sumOfSquare(100)) // 25164150 in 0.122s