func ackermann(_ m: Int, _ n: Int) -> Int {
    if m == 0 {
        return n + 1
    } else if n == 0 {
        return ackermann(m - 1, 1)
    } else {
        return ackermann(m - 1, ackermann(m, n - 1))
    }
}

print(ackermann(2, 3))
