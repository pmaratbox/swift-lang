let result = [1, 2, 3].flatMap { [$0, $0 * 10] }
print(result.map(String.init).joined(separator: " "))
