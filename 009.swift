// Special Pythagorean Triplet

func square(_ base: Int, _ power: Int) -> Int {
    var answer = 1
    for _ in 0..<power {
        answer *= base
    }
    return answer
}

func pyTriplet(_ limit: Int) -> Int {
    let iMax = limit / 3 - 1    // 332 since 333 + 334 + 335 > 1000
    let kMin = limit / 3 + 1    // 334 since 332 + 333 + 334 < 1000
    let kMax = limit / 2        // 500 since k < i + j -> 2k < 1000

    for k in kMin...kMax {
        for i in 1...iMax {
            let j = limit - i - k
            if i + j + k == limit && square(i, 2) + square(j, 2) == square(k, 2) {
                return i * j * k
            }
        }
    }

    return 0
}

print(pyTriplet(1000)) // 31875000 in 0.216s