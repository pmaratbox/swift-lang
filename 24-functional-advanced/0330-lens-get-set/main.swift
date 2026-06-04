struct Inner { let b: Int }
struct Outer { let a: Inner }

struct Lens<Whole, Part> {
    let get: (Whole) -> Part
    let set: (Part, Whole) -> Whole
}

let bLens = Lens<Outer, Int>(
    get: { $0.a.b },
    set: { newB, whole in Outer(a: Inner(b: newB)) }
)

let original = Outer(a: Inner(b: 1))
let got = bLens.get(original)
let updated = bLens.set(2, original)

print("\(got) \(bLens.get(updated))")
