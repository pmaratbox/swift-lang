struct C { let c: Int }
struct B { let b: C? }
struct A { let a: B? }

let present = A(a: B(b: C(c: 5)))
let absent = A(a: B(b: nil))

let x = present.a?.b?.c ?? 0
let y = absent.a?.b?.c ?? 0

print("\(x) \(y)")
