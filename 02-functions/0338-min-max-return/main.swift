func minMax(_ xs: [Int]) -> (min: Int, max: Int) {
    var lo = xs[0]
    var hi = xs[0]
    for x in xs[1...] {
        if x < lo { lo = x }
        if x > hi { hi = x }
    }
    return (lo, hi)
}

let result = minMax([4, 1, 7])
print("\(result.min) \(result.max)")
