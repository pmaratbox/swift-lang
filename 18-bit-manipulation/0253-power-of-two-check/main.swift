func isPowerOfTwo(_ n: Int) -> Bool {
    n > 0 && (n & (n - 1)) == 0
}

let a = isPowerOfTwo(16) ? "yes" : "no"
let b = isPowerOfTwo(18) ? "yes" : "no"
print("\(a) \(b)")
