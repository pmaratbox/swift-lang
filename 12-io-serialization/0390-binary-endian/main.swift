let value = 258
let high = (value >> 8) & 0xFF
let low = value & 0xFF
let decoded = high * 256 + low
print("\(high) \(low) \(decoded)")
