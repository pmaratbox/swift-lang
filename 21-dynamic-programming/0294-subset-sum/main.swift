let nums = [3, 34, 4, 12, 5, 2]
let target = 9
var dp = Array(repeating: false, count: target + 1)
dp[0] = true
for num in nums {
    for s in stride(from: target, through: num, by: -1) {
        if dp[s - num] { dp[s] = true }
    }
}
print(dp[target] ? "yes" : "no")
