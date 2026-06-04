let items = [(w: 2, v: 3), (w: 3, v: 4), (w: 4, v: 5)]
let capacity = 5
var dp = Array(repeating: 0, count: capacity + 1)
for item in items {
    for c in stride(from: capacity, through: item.w, by: -1) {
        dp[c] = max(dp[c], dp[c - item.w] + item.v)
    }
}
print(dp[capacity])
