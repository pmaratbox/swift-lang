enum Either<L, R> {
    case left(L)
    case right(R)

    func bind<U>(_ f: (R) -> Either<L, U>) -> Either<L, U> {
        switch self {
        case .left(let e): return .left(e)
        case .right(let x): return f(x)
        }
    }
}

func safeDivide(_ a: Int, _ b: Int) -> Either<String, Int> {
    b == 0 ? .left("err") : .right(a / b)
}

let ok = safeDivide(8, 2).bind { safeDivide($0, 2) }
let bad = safeDivide(8, 0).bind { safeDivide($0, 2) }

func describe(_ e: Either<String, Int>) -> String {
    switch e {
    case .left(let tag): return tag
    case .right(let v): return String(v)
    }
}

print("\(describe(ok)) \(describe(bad))")
