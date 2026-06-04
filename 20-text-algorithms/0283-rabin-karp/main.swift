func rabinKarp(_ text: String, _ pattern: String) -> [Int] {
    let t = Array(text), p = Array(pattern)
    let n = t.count, m = p.count
    if m == 0 || m > n { return [] }
    let base = 256, mod = 1_000_000_007
    var high = 1
    for _ in 0..<(m - 1) { high = (high * base) % mod }

    var ph = 0, th = 0
    for i in 0..<m {
        ph = (ph * base + Int(p[i].asciiValue!)) % mod
        th = (th * base + Int(t[i].asciiValue!)) % mod
    }

    var result = [Int]()
    for i in 0...(n - m) {
        if ph == th && Array(t[i..<(i + m)]) == p {
            result.append(i)
        }
        if i < n - m {
            th = (th - Int(t[i].asciiValue!) * high % mod + mod) % mod
            th = (th * base + Int(t[i + m].asciiValue!)) % mod
        }
    }
    return result
}

let matches = rabinKarp("xabxab", "ab")
print(matches.map(String.init).joined(separator: " "))
