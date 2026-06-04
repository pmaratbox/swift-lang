func countdown(_ n: Int) -> [String] {
    n < 1 ? [] : [String(n)] + countdown(n - 1)
}

print(countdown(5).joined(separator: " "))
