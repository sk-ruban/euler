// Largest Prime Factor

func largestPrimeFactor(_ number: Int) -> Int {
    var i = 2
    var limit = number

    while limit > 1 {
        if limit % i == 0 {
            limit /= i 
        } else {
            i += 1
        }
    }

    return i
}

print(largestPrimeFactor(600851475143)) // 6857 in 0.131s