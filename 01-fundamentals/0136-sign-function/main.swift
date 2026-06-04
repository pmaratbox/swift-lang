func sign(_ x: Int) -> Int {
    x < 0 ? -1 : (x > 0 ? 1 : 0)
}

print("\(sign(-5)) \(sign(0)) \(sign(5))")
