func minWindow(_ s: String, _ t: String) -> String {
    let chars = Array(s)
    var need = [Character: Int]()
    for c in t { need[c, default: 0] += 1 }
    var missing = t.count
    var left = 0, start = 0, length = Int.max

    for (right, c) in chars.enumerated() {
        if let count = need[c], count > 0 { missing -= 1 }
        need[c, default: 0] -= 1
        while missing == 0 {
            if right - left + 1 < length {
                length = right - left + 1
                start = left
            }
            need[chars[left], default: 0] += 1
            if need[chars[left]]! > 0 { missing += 1 }
            left += 1
        }
    }
    return length == Int.max ? "" : String(chars[start..<(start + length)])
}

print(minWindow("ADOBECODEBANC", "ABC"))
