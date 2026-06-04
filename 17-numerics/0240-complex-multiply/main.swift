struct Complex {
    let re: Int
    let im: Int
    static func * (a: Complex, b: Complex) -> Complex {
        Complex(re: a.re * b.re - a.im * b.im, im: a.re * b.im + a.im * b.re)
    }
}

let p = Complex(re: 1, im: 2) * Complex(re: 3, im: 4)
print("\(p.re) \(p.im)")
