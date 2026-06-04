let input = "aab"
var order: [Character] = []
var counts: [Character: Int] = [:]
for ch in input {
    if counts[ch] == nil { order.append(ch) }
    counts[ch, default: 0] += 1
}
let parts = order.map { "\($0):\(counts[$0]!)" }
print(parts.joined(separator: " "))
