let grid = [[1, 3, 1], [1, 5, 1], [4, 2, 1]]
let rows = grid.count, cols = grid[0].count
var dp = grid
for r in 0..<rows {
    for c in 0..<cols {
        if r == 0 && c == 0 { continue }
        let up = r > 0 ? dp[r - 1][c] : Int.max
        let left = c > 0 ? dp[r][c - 1] : Int.max
        dp[r][c] += min(up, left)
    }
}
print(dp[rows - 1][cols - 1])
