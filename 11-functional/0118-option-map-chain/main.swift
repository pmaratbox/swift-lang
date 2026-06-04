let present: Int? = 10
let absent: Int? = nil

let a = present.map { $0 + 2 }.map(String.init) ?? "none"
let b = absent.map { $0 + 2 }.map(String.init) ?? "none"

print("\(a) \(b)")
