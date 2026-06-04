func foldMonoid<T>(_ xs: [T], identity: T, combine: (T, T) -> T) -> T {
    xs.reduce(identity, combine)
}

let s = foldMonoid(["a", "b", "c"], identity: "", combine: +)
let n = foldMonoid([1, 2, 3], identity: 0, combine: +)

print("\(s) \(n)")
