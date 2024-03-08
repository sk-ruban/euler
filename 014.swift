// Longest Collatz Sequence

var cache = [Int: Int]()

func collatzSeq(_ num: Int) -> Int {
    var count = 1
    var n = num

    while n != 1 {

        if (n % 2 == 0) {
            n = n / 2
        } else {
            n = 3 * n + 1
        }
        count += 1
    }
    return count
}

var maxLength = 0
var maxNum = 0
var i = 1

while i <= 1000000 {
    let length = collatzSeq(i)
    if length > maxLength {
        maxLength = length
        maxNum = i
    }
    i += 1
}

print(maxNum) // 837799 in 0.368s