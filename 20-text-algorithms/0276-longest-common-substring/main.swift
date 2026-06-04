func longestCommonSubstring(_ a: String, _ b: String) -> String {
    let s = Array(a), t = Array(b)
    var dp = [[Int]](repeating: [Int](repeating: 0, count: t.count + 1), count: s.count + 1)
    var best = 0, end = 0
    for i in 1...s.count {
        for j in 1...t.count {
            if s[i - 1] == t[j - 1] {
                dp[i][j] = dp[i - 1][j - 1] + 1
                if dp[i][j] > best {
                    best = dp[i][j]
                    end = i
                }
            }
        }
    }
    return String(s[(end - best)..<end])
}

print(longestCommonSubstring("abcde", "xbcdy"))
