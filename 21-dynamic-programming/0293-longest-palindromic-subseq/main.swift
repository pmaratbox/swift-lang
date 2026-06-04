let s = Array("bbbab")
let n = s.count
var dp = Array(repeating: Array(repeating: 0, count: n), count: n)
for i in stride(from: n - 1, through: 0, by: -1) {
    dp[i][i] = 1
    for j in (i + 1)..<n {
        if s[i] == s[j] {
            dp[i][j] = dp[i + 1][j - 1] + 2
        } else {
            dp[i][j] = max(dp[i + 1][j], dp[i][j - 1])
        }
    }
}
print(dp[0][n - 1])
