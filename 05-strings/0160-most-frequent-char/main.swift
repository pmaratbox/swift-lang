let text = "hello"
var counts: [Character: Int] = [:]
for char in text {
    counts[char, default: 0] += 1
}
var best = text.first!
var bestCount = 0
for char in text {
    if counts[char]! > bestCount {
        bestCount = counts[char]!
        best = char
    }
}
print(best)
