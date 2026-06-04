func moves(_ n: Int) -> Int {
    n == 0 ? 0 : 2 * moves(n - 1) + 1
}

print(moves(3))
