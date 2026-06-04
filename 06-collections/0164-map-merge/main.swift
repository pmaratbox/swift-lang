let left = ["a": 1, "b": 2]
let right = ["b": 3, "c": 4]
let merged = left.merging(right) { _, new in new }
let parts = merged.sorted { $0.key < $1.key }.map { "\($0.key):\($0.value)" }
print(parts.joined(separator: " "))
