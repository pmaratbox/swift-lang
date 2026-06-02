let scores = ["a": 3, "b": 1, "c": 2]
let sorted = scores.sorted { $0.value < $1.value }
print(sorted.map { "\($0.key):\($0.value)" }.joined(separator: " "))
