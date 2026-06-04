func levenshtein(_ a: String, _ b: String) -> Int {
    let s = Array(a), t = Array(b)
    var dp = Array(0...t.count)
    for i in 1...s.count {
        var prev = dp[0]
        dp[0] = i
        for j in 1...t.count {
            let cur = dp[j]
            if s[i - 1] == t[j - 1] {
                dp[j] = prev
            } else {
                dp[j] = 1 + min(prev, dp[j], dp[j - 1])
            }
            prev = cur
        }
    }
    return dp[t.count]
}

print(levenshtein("kitten", "sitting"))
