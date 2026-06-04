let m = [[1, 2], [3, 4]]
let v = [5, 6]
let result = m.map { row in zip(row, v).map(*).reduce(0, +) }
print(result.map(String.init).joined(separator: " "))
