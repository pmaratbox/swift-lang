let squares = sequence(first: 1, next: { $0 + 1 }).lazy.map { $0 * $0 }
let first3 = Array(squares.prefix(3))
print(first3.map(String.init).joined(separator: " "))
