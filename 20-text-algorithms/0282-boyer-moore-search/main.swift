func boyerMooreSearch(_ text: String, _ pattern: String) -> Int {
    let t = Array(text), p = Array(pattern)
    let n = t.count, m = p.count
    if m == 0 { return 0 }
    var last = [Character: Int]()
    for (i, c) in p.enumerated() { last[c] = i }

    var s = 0
    while s <= n - m {
        var j = m - 1
        while j >= 0 && p[j] == t[s + j] { j -= 1 }
        if j < 0 { return s }
        let badShift = j - (last[t[s + j]] ?? -1)
        s += max(1, badShift)
    }
    return -1
}

print(boyerMooreSearch("zzabc", "abc"))
