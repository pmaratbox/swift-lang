let coins = [1, 2, 5]
let target = 5
var dp = Array(repeating: 0, count: target + 1)
dp[0] = 1
for coin in coins {
    for amount in coin...target {
        dp[amount] += dp[amount - coin]
    }
}
print(dp[target])
