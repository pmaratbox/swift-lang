func minMax(_ a: Int, _ b: Int) -> (Int, Int) {
    return a < b ? (a, b) : (b, a)
}

let (lo, hi) = minMax(3, 7)
print("min: \(lo)")
print("max: \(hi)")
