func isPalindrome(_ s: String) -> Bool {
    return s == String(s.reversed())
}

for word in ["level", "hello"] {
    print("\(word): \(isPalindrome(word) ? "yes" : "no")")
}
