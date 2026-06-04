func clamp(_ x: Int, _ lo: Int, _ hi: Int) -> Int {
    max(lo, min(x, hi))
}

print("\(clamp(15, 0, 10)) \(clamp(-3, 0, 10))")
