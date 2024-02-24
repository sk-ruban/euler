// Largest Palindrome Product

func isPalindrome(_ num: Int) -> Bool {
    String(num) == String(String(num).reversed())
}

func largestPalindrome(_ num1: Int, _ num2: Int) -> Int {
    var currentLargest = 0

    for i in stride(from: num1, through: 500, by: -1) {
        for j in stride(from: num2, through: 500, by: -1) {
            let product = i * j

            if (product) > currentLargest && isPalindrome(product) {
                    currentLargest = product
            }
        }
    }

    return currentLargest
}

print(largestPalindrome(999, 999)) // 906609 in 0.142s