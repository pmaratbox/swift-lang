let values = Array(sequence(first: 1) { $0 * 3 }.prefix(4))
print(values.map(String.init).joined(separator: " "))
