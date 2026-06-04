struct Rec<A, B> {
    let f: (Rec<A, B>) -> (A) -> B
    func call(_ x: A) -> B { f(self)(x) }
}

func fix<A, B>(_ gen: @escaping (@escaping (A) -> B) -> (A) -> B) -> (A) -> B {
    let r = Rec<A, B> { rec in gen { rec.call($0) } }
    return { r.call($0) }
}

let factorial = fix { (rec: @escaping (Int) -> Int) -> (Int) -> Int in
    { n in n == 0 ? 1 : n * rec(n - 1) }
}

print(factorial(5))
