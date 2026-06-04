struct LcgPrng {
    var x: Int
    mutating func next() -> Int {
        x = (5 * x + 3) % 16
        return x
    }
}

var rng = LcgPrng(x: 1)
let outputs = (0..<3).map { _ in String(rng.next()) }
print(outputs.joined(separator: " "))
