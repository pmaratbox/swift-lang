func gcd(_ a: Int, _ b: Int) -> Int {
    var a = abs(a), b = abs(b)
    while b != 0 { (a, b) = (b, a % b) }
    return a
}

func addFractions(_ n1: Int, _ d1: Int, _ n2: Int, _ d2: Int) -> (Int, Int) {
    let num = n1 * d2 + n2 * d1
    let den = d1 * d2
    let g = gcd(num, den)
    return (num / g, den / g)
}

let (n, d) = addFractions(1, 2, 1, 3)
print("\(n)/\(d)")
