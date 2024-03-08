// Multiples of 3 or 5

func multiples(_ first: Int, _ second: Int, _ limit: Int) -> Int {
    var count = 0
    for num in 1..<limit {
        if num % first == 0  || num % second == 0 {
            count += num
        }
    }
    return count
}

print(multiples(3, 5, 1000)) // 233168 in 0.134s