indirect enum Expr {
    case num(Int)
    case add(Expr, Expr)
}

func eval(_ e: Expr) -> Int {
    switch e {
    case .num(let n): return n
    case .add(let a, let b): return eval(a) + eval(b)
    }
}

print(eval(.add(.num(1), .num(2))))
