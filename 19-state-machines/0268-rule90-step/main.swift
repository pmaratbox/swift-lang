let row = "00100".map { Int(String($0))! }
let n = row.count
var next = [Int](repeating: 0, count: n)
for i in 0..<n {
    let left = i > 0 ? row[i - 1] : 0
    let right = i < n - 1 ? row[i + 1] : 0
    next[i] = left ^ right
}
print(next.map(String.init).joined())
