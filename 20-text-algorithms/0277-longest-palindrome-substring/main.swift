func longestPalindrome(_ s: String) -> String {
    let chars = Array(s)
    let n = chars.count
    if n == 0 { return "" }
    var start = 0, maxLen = 1

    func expand(_ l: Int, _ r: Int) {
        var lo = l, hi = r
        while lo >= 0 && hi < n && chars[lo] == chars[hi] {
            lo -= 1
            hi += 1
        }
        let len = hi - lo - 1
        if len > maxLen {
            maxLen = len
            start = lo + 1
        }
    }

    for i in 0..<n {
        expand(i, i)
        expand(i, i + 1)
    }
    return String(chars[start..<(start + maxLen)])
}

print(longestPalindrome("babad"))
