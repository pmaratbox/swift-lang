func binomial(_ n: Int, _ k: Int) -> Int {
    let k = min(k, n - k)
    var result = 1
    for i in 0..<k {
        result = result * (n - i) / (i + 1)
    }
    return result
}

print(binomial(5, 2))
