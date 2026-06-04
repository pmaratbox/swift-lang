let n = 3
let INF = Int.max / 2
var dist = [[Int]](repeating: [Int](repeating: INF, count: n), count: n)
for i in 0..<n { dist[i][i] = 0 }
dist[0][1] = 3
dist[1][2] = 1
dist[0][2] = 5

for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n where dist[i][k] + dist[k][j] < dist[i][j] {
            dist[i][j] = dist[i][k] + dist[k][j]
        }
    }
}

print(dist[0][2])
