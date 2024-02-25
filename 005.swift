// Smallest Multiple

func smallestMultiple(_ end: Int) -> Int {
    let start = (end / 2) + 1
    var num = end
    var count = 0
    let primes = (5...end).lazy.filter({ isPrime($0) }).reduce(1, *) * 6
    
    while num > 0 {
        if (start...end).lazy.allSatisfy({ num % $0 == 0}) {
            break
        }
        count += 1
        num = (count * primes)
    }
    return num
}

func isPrime(_ n: Int) -> Bool {
    return (2...Int(Double(n).squareRoot())).lazy.filter({n % $0 == 0}).first == nil
}

print(smallestMultiple(20)) // 232792560 in 0.153s