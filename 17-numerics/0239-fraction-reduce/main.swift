func gcd(_ a: Int, _ b: Int) -> Int {
    var a = abs(a), b = abs(b)
    while b != 0 { (a, b) = (b, a % b) }
    return a
}

let num = 6, den = 8
let g = gcd(num, den)
print("\(num / g)/\(den / g)")
