let grid = [
    [0, 1, 0],
    [0, 1, 0],
    [0, 1, 0],
]

func neighbors(_ g: [[Int]], _ r: Int, _ c: Int) -> Int {
    var count = 0
    for dr in -1...1 {
        for dc in -1...1 where !(dr == 0 && dc == 0) {
            let nr = r + dr, nc = c + dc
            if nr >= 0, nr < 3, nc >= 0, nc < 3 {
                count += g[nr][nc]
            }
        }
    }
    return count
}

var next = grid
for r in 0..<3 {
    for c in 0..<3 {
        let n = neighbors(grid, r, c)
        next[r][c] = (grid[r][c] == 1) ? ((n == 2 || n == 3) ? 1 : 0) : (n == 3 ? 1 : 0)
    }
}

for row in next {
    print(row.map { $0 == 1 ? "#" : "." }.joined())
}
