let input = "1 + 2"
var tokens: [String] = []
for ch in input {
    if ch.isNumber {
        tokens.append("NUM")
    } else if ch == "+" {
        tokens.append("PLUS")
    }
}
print(tokens.joined(separator: " "))
