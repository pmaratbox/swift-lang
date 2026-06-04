let text = "[1,2,3]"
let inner = text.dropFirst().dropLast()
let sum = inner.split(separator: ",").compactMap { Int($0) }.reduce(0, +)
print(sum)
