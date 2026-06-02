var cache: [Int: Int] = [:]

func fib(_ n: Int) -> Int {
    if n < 2 { return n }
    if let v = cache[n] { return v }
    let result = fib(n - 1) + fib(n - 2)
    cache[n] = result
    return result
}

print(fib(10))
