func multiplyStrings(_ a: String, _ b: String) -> String {
    let x = Array(a).map { Int(String($0))! }
    let y = Array(b).map { Int(String($0))! }
    var result = [Int](repeating: 0, count: x.count + y.count)
    for i in stride(from: x.count - 1, through: 0, by: -1) {
        for j in stride(from: y.count - 1, through: 0, by: -1) {
            let pos = i + j + 1
            let mul = x[i] * y[j] + result[pos]
            result[pos] = mul % 10
            result[pos - 1] += mul / 10
        }
    }
    let s = result.map(String.init).joined()
    let trimmed = String(s.drop { $0 == "0" })
    return trimmed.isEmpty ? "0" : trimmed
}

print(multiplyStrings("123", "456"))
