func power(_ base: Int, _ exp: Int) -> Int {
    exp == 0 ? 1 : base * power(base, exp - 1)
}

print(power(2, 10))
