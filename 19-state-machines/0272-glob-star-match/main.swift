func glob(_ pattern: [Character], _ text: [Character]) -> Bool {
    var p = 0, t = 0
    var star = -1, mark = 0
    while t < text.count {
        if p < pattern.count && (pattern[p] == text[t]) {
            p += 1; t += 1
        } else if p < pattern.count && pattern[p] == "*" {
            star = p; mark = t; p += 1
        } else if star != -1 {
            p = star + 1; mark += 1; t = mark
        } else {
            return false
        }
    }
    while p < pattern.count && pattern[p] == "*" { p += 1 }
    return p == pattern.count
}

let pattern = Array("a*b")
let results = ["aaab", "aac"].map { glob(pattern, Array($0)) ? "yes" : "no" }
print(results.joined(separator: " "))
