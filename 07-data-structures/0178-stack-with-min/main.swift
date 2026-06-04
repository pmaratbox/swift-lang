struct MinStack {
    private var items: [Int] = []
    private var mins: [Int] = []

    mutating func push(_ value: Int) {
        items.append(value)
        mins.append(min(value, mins.last ?? value))
    }

    @discardableResult
    mutating func pop() -> Int? {
        guard !items.isEmpty else { return nil }
        mins.removeLast()
        return items.removeLast()
    }

    func getMin() -> Int? { mins.last }
}

var stack = MinStack()
for value in [3, 1, 2] {
    stack.push(value)
}
print("min: \(stack.getMin()!)")
