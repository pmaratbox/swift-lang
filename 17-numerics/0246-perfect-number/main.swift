func isPerfect(_ n: Int) -> Bool {
    let sum = (1..<n).filter { n % $0 == 0 }.reduce(0, +)
    return sum == n
}

func label(_ n: Int) -> String { isPerfect(n) ? "yes" : "no" }
print("\(label(6)) \(label(8))")
