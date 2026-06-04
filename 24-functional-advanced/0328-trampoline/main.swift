enum Trampoline {
    case done(Int)
    case more(() -> Trampoline)
}

func run(_ t: Trampoline) -> Int {
    var current = t
    while true {
        switch current {
        case .done(let v): return v
        case .more(let thunk): current = thunk()
        }
    }
}

func sumTo(_ n: Int, _ acc: Int) -> Trampoline {
    n == 0 ? .done(acc) : .more { sumTo(n - 1, acc + n) }
}

print(run(sumTo(100, 0)))
