func unfold(seed: Int, next: (Int) -> Int, count: Int) -> [Int] {
    var result: [Int] = []
    var x = seed
    for _ in 0..<count {
        result.append(x)
        x = next(x)
    }
    return result
}

let terms = unfold(seed: 1, next: { $0 * 2 }, count: 5)
print(terms.map(String.init).joined(separator: " "))
