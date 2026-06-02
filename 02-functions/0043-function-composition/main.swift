let inc = { (x: Int) in x + 1 }
let twice = { (x: Int) in x * 2 }
func compose(_ f: @escaping (Int) -> Int, _ g: @escaping (Int) -> Int) -> (Int) -> Int {
    return { x in f(g(x)) }
}

print(compose(inc, twice)(3))
