func reverseByte(_ x: UInt8) -> UInt8 {
    var v = x
    var result: UInt8 = 0
    for _ in 0..<8 {
        result = (result << 1) | (v & 1)
        v >>= 1
    }
    return result
}

print(reverseByte(1))
