func compose<A, B, C>(_ f: @escaping (B) -> C, _ g: @escaping (A) -> B) -> (A) -> C {
    { f(g($0)) }
}

let square: (Int) -> Int = { $0 * $0 }
let mapSquare: ([Int]) -> [Int] = { $0.map(square) }
let sum: ([Int]) -> Int = { $0.reduce(0, +) }

let sumOfSquares = compose(sum, mapSquare)

print(sumOfSquares([1, 2, 3]))
