// Summation of Primes

func sumPrimes(upTo limit: Int) -> Int {
    guard limit >= 2 else { return 0 }

    var primes = Array(repeating: true, count: limit + 1)
    var num = 2
    var sum  = 0

    while (num * num <= limit) {
        if primes[num] == true {
            for i in stride(from: num * num, through: limit, by: num) {
                primes[i] = false
            }
        }
        num += 1
    }
    
    for i in 2...(limit) {
        if primes[i] {
            sum += i
        }
    }

    return sum
}

print(sumPrimes(upTo: 2000000)) // 142913828922 in 0.848s