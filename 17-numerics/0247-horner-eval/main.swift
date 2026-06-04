func horner(_ coeffs: [Int], _ x: Int) -> Int {
    coeffs.reduce(0) { $0 * x + $1 }
}

print(horner([2, 3, 1], 2))
