func pipe(_ fs: ((Int) -> Int)...) -> (Int) -> Int {
    return { x in fs.reduce(x) { acc, f in f(acc) } }
}

let inc: (Int) -> Int = { $0 + 1 }
let double: (Int) -> Int = { $0 * 2 }
let negate: (Int) -> Int = { -$0 }

let p = pipe(inc, double, negate)
print(p(3))
