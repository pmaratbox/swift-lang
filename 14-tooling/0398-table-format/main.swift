let rows = [("a", "1"), ("bb", "22")]

let width = rows.map { $0.0.count }.max() ?? 0

for (first, second) in rows {
    let padded = first + String(repeating: " ", count: width - first.count)
    print("\(padded) | \(second)")
}
