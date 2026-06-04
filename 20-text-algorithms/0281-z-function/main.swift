func zFunction(_ s: String) -> [Int] {
    let chars = Array(s)
    let n = chars.count
    var z = [Int](repeating: 0, count: n)
    var l = 0, r = 0
    for i in 1..<n {
        if i < r { z[i] = min(r - i, z[i - l]) }
        while i + z[i] < n && chars[z[i]] == chars[i + z[i]] { z[i] += 1 }
        if i + z[i] > r { l = i; r = i + z[i] }
    }
    return z
}

let z = zFunction("aaaa")
print(z[1...].map(String.init).joined(separator: " "))
