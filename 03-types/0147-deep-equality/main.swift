struct Inner: Equatable {
    let x: Int
    let y: Int
}

struct Outer: Equatable {
    let a: Inner
    let b: Inner
}

let lhs = Outer(a: Inner(x: 1, y: 2), b: Inner(x: 3, y: 4))
let rhs = Outer(a: Inner(x: 1, y: 2), b: Inner(x: 3, y: 4))

print("equal: \(lhs == rhs ? "yes" : "no")")
