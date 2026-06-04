let first = [1, 2, 3, 4]
let second: Set = [2, 4]
let diff = first.filter { !second.contains($0) }
print(diff.map(String.init).joined(separator: " "))
