func reversed(_ xs: [Int]) -> [Int] {
    guard let first = xs.first else { return [] }
    return reversed(Array(xs.dropFirst())) + [first]
}

let result = reversed([1, 2, 3])
print(result.map(String.init).joined(separator: " "))
