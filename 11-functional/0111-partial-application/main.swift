func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func partial(_ a: Int) -> (Int) -> Int {
    return { b in add(a, b) }
}

let add10 = partial(10)
print(add10(3))
