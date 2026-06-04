enum Maybe<T> {
    case some(T)
    case none

    func bind<U>(_ f: (T) -> Maybe<U>) -> Maybe<U> {
        switch self {
        case .some(let x): return f(x)
        case .none: return .none
        }
    }
}

func describe(_ m: Maybe<Int>) -> String {
    switch m {
    case .some(let x): return String(x)
    case .none: return "none"
    }
}

let present = Maybe.some(2)
    .bind { .some($0 + 3) }
    .bind { .some($0 * 2) }

let absent = Maybe<Int>.none
    .bind { .some($0 + 3) }
    .bind { .some($0 * 2) }

print("\(describe(present)) \(describe(absent))")
