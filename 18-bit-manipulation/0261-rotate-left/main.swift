func rol8(_ x: UInt8, _ n: UInt8) -> UInt8 {
    (x << n) | (x >> (8 - n))
}

print("\(rol8(1, 1)) \(rol8(128, 1))")
