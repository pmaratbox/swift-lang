let r = 1, g = 2, b = 3
let packed = (r << 16) | (g << 8) | b
let ur = (packed >> 16) & 0xff
let ug = (packed >> 8) & 0xff
let ub = packed & 0xff
print("\(ur) \(ug) \(ub)")
