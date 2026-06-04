let coins = [1, 2, 5]
let target = 11
var dp = Array(repeating: target + 1, count: target + 1)
dp[0] = 0
for amount in 1...target {
    for coin in coins where coin <= amount {
        dp[amount] = min(dp[amount], dp[amount - coin] + 1)
    }
}
print(dp[target])
