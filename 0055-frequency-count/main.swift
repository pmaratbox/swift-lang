let word = "banana"
var counts: [Character: Int] = [:]
for ch in word {
    counts[ch, default: 0] += 1
}

let out = counts.sorted { $0.key < $1.key }.map { "\($0.key):\($0.value)" }
print(out.joined(separator: " "))
