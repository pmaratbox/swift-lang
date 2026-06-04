struct RangeIterator: IteratorProtocol {
    var current: Int
    let end: Int

    mutating func next() -> Int? {
        guard current <= end else { return nil }
        defer { current += 1 }
        return current
    }
}

struct CountUp: Sequence {
    let start: Int
    let end: Int
    func makeIterator() -> RangeIterator {
        RangeIterator(current: start, end: end)
    }
}

let values = Array(CountUp(start: 1, end: 3))
print(values.map(String.init).joined(separator: " "))
