let m = ["a": 1, "b": 2, "c": 3]
var inverted: [Int: String] = [:]
for (k, v) in m {
    inverted[v] = k
}
let sorted = inverted.sorted { $0.key < $1.key }
print(sorted.map { "\($0.key):\($0.value)" }.joined(separator: " "))
