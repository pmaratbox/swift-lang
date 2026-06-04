let strings = ["flower", "flow", "flight"]
var prefix = ""
if let first = strings.first {
    outer: for (i, char) in first.enumerated() {
        for s in strings.dropFirst() {
            let chars = Array(s)
            if i >= chars.count || chars[i] != char {
                break outer
            }
        }
        prefix.append(char)
    }
}
print(prefix)
