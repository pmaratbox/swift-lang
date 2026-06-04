func zipWith<A, B, C>(_ xs: [A], _ ys: [B], _ f: (A, B) -> C) -> [C] {
    return zip(xs, ys).map(f)
}

let result = zipWith([1, 2, 3], [4, 5, 6], +)
print(result.map(String.init).joined(separator: " "))
