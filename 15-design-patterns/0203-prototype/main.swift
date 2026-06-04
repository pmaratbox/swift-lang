final class Prototype {
    var value: Int
    init(value: Int) { self.value = value }
    func clone() -> Prototype { Prototype(value: value) }
}

let original = Prototype(value: 1)
let copy = original.clone()
copy.value = 2
print("\(original.value) \(copy.value)")
