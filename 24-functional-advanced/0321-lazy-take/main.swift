let naturals = sequence(first: 1) { $0 + 1 }
let firstFive = Array(naturals.prefix(5))
print(firstFive.map(String.init).joined(separator: " "))
