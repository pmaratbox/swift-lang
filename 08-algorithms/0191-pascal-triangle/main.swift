var row = [1]
for _ in 0..<4 {
    print(row.map(String.init).joined(separator: " "))
    var next = [1]
    for i in 1..<row.count {
        next.append(row[i - 1] + row[i])
    }
    next.append(1)
    row = next
}
