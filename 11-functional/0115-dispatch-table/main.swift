let table: [String: (Int, Int) -> Int] = [
    "add": (+),
    "mul": (*),
]

let a = table["add"]!(3, 4)
let m = table["mul"]!(3, 4)
print("\(a) \(m)")
