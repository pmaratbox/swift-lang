final class Counter {
    private(set) var calls = 0
    private let body: () -> Void

    init(_ body: @escaping () -> Void) {
        self.body = body
    }

    func call() {
        calls += 1
        body()
    }
}

let counter = Counter {}
for _ in 0..<5 {
    counter.call()
}
print("calls: \(counter.calls)")
