let pattern = Array("ab")
let text = Array("aab")
var state = 0  // number of pattern chars matched so far

func firstMatch() -> Int {
    for (i, ch) in text.enumerated() {
        if state < pattern.count && ch == pattern[state] {
            state += 1
        } else if ch == pattern[0] {
            state = 1
        } else {
            state = 0
        }
        if state == pattern.count {
            return i - pattern.count + 1
        }
    }
    return -1
}

print(firstMatch())
