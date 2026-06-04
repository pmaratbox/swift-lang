indirect enum Expr {
    case num(Int)
    case add(Expr, Expr)
    case mul(Expr, Expr)

    func eval() -> Int {
        switch self {
        case .num(let n): return n
        case .add(let l, let r): return l.eval() + r.eval()
        case .mul(let l, let r): return l.eval() * r.eval()
        }
    }
}

let ast = Expr.add(.num(1), .mul(.num(2), .num(3)))
print(ast.eval())
