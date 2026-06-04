func modPow(_ base: Int, _ exp: Int, _ mod: Int) -> Int {
    var result = 1
    var b = base % mod
    var e = exp
    while e > 0 {
        if e & 1 == 1 { result = result * b % mod }
        b = b * b % mod
        e >>= 1
    }
    return result
}

print(modPow(3, 13, 7))
