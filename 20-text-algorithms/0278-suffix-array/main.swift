func suffixArray(_ s: String) -> [Int] {
    let chars = Array(s)
    let indices = Array(0..<chars.count)
    return indices.sorted { i, j in
        var a = i, b = j
        while a < chars.count && b < chars.count {
            if chars[a] != chars[b] { return chars[a] < chars[b] }
            a += 1
            b += 1
        }
        return a >= chars.count
    }
}

let sa = suffixArray("banana")
print(sa.map(String.init).joined(separator: " "))
