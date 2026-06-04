let items = ["a", "b", "a", "c", "b", "a"]
var counts: [String: Int] = [:]
for item in items {
    counts[item, default: 0] += 1
}
let top = counts.sorted { $0.value > $1.value }.prefix(2).map(\.key)
print(top.joined(separator: " "))
