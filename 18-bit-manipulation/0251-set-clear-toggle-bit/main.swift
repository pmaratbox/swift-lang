let set = 0 | (1 << 1)
let clear = 2 & ~(1 << 1)
let toggle = 0 ^ (1 << 1)
print("\(set) \(clear) \(toggle)")
