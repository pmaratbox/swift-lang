let matrix = [[1, 2, 3], [4, 5, 6]]
let rows = matrix.count
let cols = matrix[0].count

for j in 0..<cols {
    var row: [String] = []
    for i in 0..<rows {
        row.append(String(matrix[i][j]))
    }
    print(row.joined(separator: " "))
}
