func lcsLength(_ a: String, _ b: String) -> Int {
    let s = Array(a), t = Array(b)
    var dp = [[Int]](repeating: [Int](repeating: 0, count: t.count + 1), count: s.count + 1)
    for i in 1...s.count {
        for j in 1...t.count {
            if s[i - 1] == t[j - 1] {
                dp[i][j] = dp[i - 1][j - 1] + 1
            } else {
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
            }
        }
    }
    return dp[s.count][t.count]
}

print(lcsLength("ABCBDAB", "BDCAB"))
