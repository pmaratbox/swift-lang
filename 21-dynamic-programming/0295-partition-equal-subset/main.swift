let nums = [1, 5, 11, 5]
let total = nums.reduce(0, +)
var answer = "no"
if total % 2 == 0 {
    let target = total / 2
    var dp = Array(repeating: false, count: target + 1)
    dp[0] = true
    for num in nums {
        for s in stride(from: target, through: num, by: -1) {
            if dp[s - num] { dp[s] = true }
        }
    }
    answer = dp[target] ? "yes" : "no"
}
print(answer)
