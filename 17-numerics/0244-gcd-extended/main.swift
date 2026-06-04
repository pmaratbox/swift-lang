func extendedGcd(_ a: Int, _ b: Int) -> (g: Int, x: Int, y: Int) {
    if b == 0 { return (a, 1, 0) }
    let (g, x1, y1) = extendedGcd(b, a % b)
    return (g, y1, x1 - (a / b) * y1)
}

let r = extendedGcd(30, 12)
print("\(r.g) \(r.x) \(r.y)")
