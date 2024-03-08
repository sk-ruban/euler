// Even Fibonacci Numbers

func sum_even_fib(limit: Int) -> Int {
    var count = 0
    var (current, previous) = (1, 0)

    while current < limit {
        (current, previous) = (current + previous, current)
        if current % 2 == 0 {
            count += current
        }
    }
    return count
}

print(sum_even_fib(limit: 4000000)) // 4613732 in 0.125s