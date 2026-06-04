typealias Strategy = (Int, Int) -> Int

let strategies: [String: Strategy] = [
    "add": { $0 + $1 },
    "mul": { $0 * $1 }
]

let add = strategies["add"]!
let mul = strategies["mul"]!
print("\(add(3, 4)) \(mul(3, 4))")
