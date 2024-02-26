// 10001st Prime

func isPrime(_ n: Int) -> Bool {
    switch n {
        case 2: true
        case 3: true
        default: (2...Int(Double(n).squareRoot())).lazy.filter({n % $0 == 0}).first == nil
    }
}

func primeNo(_ n: Int) -> Int {
    var num = 7
    var count = 3

    while count != n {
        count += isPrime(num) ? 1 : 0
        num += 2
    }
    return num - 2
}

print(primeNo(10001)) // 104743 in 0.923s