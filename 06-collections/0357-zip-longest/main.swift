let a = ["1", "2", "3"]
let b = ["a", "b"]

let n = max(a.count, b.count)
var parts: [String] = []
for i in 0..<n {
    let left = i < a.count ? a[i] : "-"
    let right = i < b.count ? b[i] : "-"
    parts.append(left + right)
}
print(parts.joined(separator: " "))
