typealias Predicate = (Int) -> Bool

func and(_ p: @escaping Predicate, _ q: @escaping Predicate) -> Predicate {
    return { x in p(x) && q(x) }
}

let isEven: Predicate = { $0 % 2 == 0 }
let isPositive: Predicate = { $0 > 0 }
let combined = and(isEven, isPositive)

print(combined(4) ? "yes" : "no", combined(-4) ? "yes" : "no")
