func fastPower(_ base: Int, _ exp: Int) -> Int {
    var result = 1
    var b = base
    var e = exp
    while e > 0 {
        if e & 1 == 1 { result *= b }
        b *= b
        e >>= 1
    }
    return result
}

print(fastPower(2, 10))
