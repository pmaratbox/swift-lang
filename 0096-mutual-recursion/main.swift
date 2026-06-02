func isEven(_ n: Int) -> Bool {
    if n == 0 { return true }
    return isOdd(n - 1)
}

func isOdd(_ n: Int) -> Bool {
    if n == 0 { return false }
    return isEven(n - 1)
}

for n in [4, 3] {
    print(isEven(n) ? "even" : "odd")
}
