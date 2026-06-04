func prefixFunction(_ p: [Character]) -> [Int] {
    var pi = [Int](repeating: 0, count: p.count)
    var k = 0
    for i in 1..<p.count {
        while k > 0 && p[i] != p[k] { k = pi[k - 1] }
        if p[i] == p[k] { k += 1 }
        pi[i] = k
    }
    return pi
}

func kmpSearch(_ text: String, _ pattern: String) -> [Int] {
    let t = Array(text), p = Array(pattern)
    let pi = prefixFunction(p)
    var result = [Int]()
    var k = 0
    for i in 0..<t.count {
        while k > 0 && t[i] != p[k] { k = pi[k - 1] }
        if t[i] == p[k] { k += 1 }
        if k == p.count {
            result.append(i - p.count + 1)
            k = pi[k - 1]
        }
    }
    return result
}

let matches = kmpSearch("ababab", "ab")
print(matches.map(String.init).joined(separator: " "))
