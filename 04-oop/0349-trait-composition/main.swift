protocol A {}
extension A {
    func a() -> String { "a" }
}

protocol B {}
extension B {
    func b() -> String { "b" }
}

struct TraitComposition: A, B {}

let t = TraitComposition()
print("\(t.a()) \(t.b())")
