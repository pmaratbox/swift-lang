func gcd(_ a: Int, _ b: Int) -> Int {
    var (a, b) = (a, b)
    while b != 0 { (a, b) = (b, a % b) }
    return a
}
func lcm(_ a: Int, _ b: Int) -> Int { a / gcd(a, b) * b }
print(lcm(4, 6))
