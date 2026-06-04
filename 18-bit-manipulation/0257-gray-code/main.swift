let codes = (0..<4).map { $0 ^ ($0 >> 1) }
print(codes.map(String.init).joined(separator: " "))
