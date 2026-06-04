let dims = [10, 20, 30, 40]
let n = dims.count - 1
var dp = Array(repeating: Array(repeating: 0, count: n), count: n)
for length in 2...n {
    for i in 0...(n - length) {
        let j = i + length - 1
        dp[i][j] = Int.max
        for k in i..<j {
            let cost = dp[i][k] + dp[k + 1][j] + dims[i] * dims[k + 1] * dims[j + 1]
            dp[i][j] = min(dp[i][j], cost)
        }
    }
}
print(dp[0][n - 1])
