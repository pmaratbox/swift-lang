let text = "hello world"
let result = text.split(separator: " ")
    .map { $0.prefix(1).uppercased() + $0.dropFirst() }
    .joined(separator: " ")
print(result)
