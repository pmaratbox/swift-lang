func sum(_ xs: [Int]) -> Int {
    guard let first = xs.first else { return 0 }
    return first + sum(Array(xs.dropFirst()))
}

print(sum([1, 2, 3, 4]))
