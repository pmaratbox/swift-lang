let nums = [10, 9, 2, 5, 3, 7, 101, 18]
var dp = Array(repeating: 1, count: nums.count)
for i in nums.indices {
    for j in 0..<i where nums[j] < nums[i] {
        dp[i] = max(dp[i], dp[j] + 1)
    }
}
print(dp.max() ?? 0)
