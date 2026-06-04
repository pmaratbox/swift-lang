let a = [1, 3, 5]
let b = [2, 4, 6]

let merged = zip(a, b).flatMap { [$0, $1] }
print(merged.map(String.init).joined(separator: " "))
