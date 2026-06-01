func word(_ n: Int) -> String {
    switch n {
    case 1:
        return "one"
    case 2:
        return "two"
    default:
        return "many"
    }
}

for n in [1, 2, 5] {
    print("\(n): \(word(n))")
}
