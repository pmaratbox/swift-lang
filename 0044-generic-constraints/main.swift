func largest<T: Comparable>(_ a: T, _ b: T) -> T {
    return a > b ? a : b
}

print(largest(3, 9))
print(largest("apple", "pear"))
