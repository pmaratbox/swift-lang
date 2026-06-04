func factCPS(_ n: Int, _ k: @escaping (Int) -> Int) -> Int {
    if n == 0 {
        return k(1)
    }
    return factCPS(n - 1) { k(n * $0) }
}

print(factCPS(5) { $0 })
