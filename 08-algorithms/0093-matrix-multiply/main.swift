let a = [[1, 2], [3, 4]]
let b = [[5, 6], [7, 8]]
let n = 2
var result = Array(repeating: Array(repeating: 0, count: n), count: n)
for i in 0..<n {
    for j in 0..<n {
        for k in 0..<n {
            result[i][j] += a[i][k] * b[k][j]
        }
    }
}

for row in result {
    print(row.map { String($0) }.joined(separator: " "))
}
