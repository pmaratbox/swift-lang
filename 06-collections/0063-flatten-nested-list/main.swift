let nested = [[1, 2], [3, 4]]
let flat = nested.flatMap { $0 }
print(flat.map { String($0) }.joined(separator: " "))
