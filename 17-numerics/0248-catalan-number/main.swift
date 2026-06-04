func catalans(_ count: Int) -> [Int] {
    var result = [1]
    var c = 1
    for n in 0..<(count - 1) {
        c = c * 2 * (2 * n + 1) / (n + 2)
        result.append(c)
    }
    return result
}

print(catalans(5).map(String.init).joined(separator: " "))
