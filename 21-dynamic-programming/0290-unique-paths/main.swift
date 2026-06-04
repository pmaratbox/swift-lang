let rows = 3, cols = 3
var dp = Array(repeating: 1, count: cols)
for _ in 1..<rows {
    for c in 1..<cols {
        dp[c] += dp[c - 1]
    }
}
print(dp[cols - 1])
