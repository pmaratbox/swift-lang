func add(_ a: Int) -> (Int) -> Int {
    return { b in a + b }
}

print(add(2)(3))
