struct CircularQueue {
    private var buffer: [Int]
    private var head = 0
    private var count = 0
    let capacity: Int

    init(capacity: Int) {
        self.capacity = capacity
        buffer = Array(repeating: 0, count: capacity)
    }

    @discardableResult
    mutating func enqueue(_ value: Int) -> Bool {
        guard count < capacity else { return false }
        buffer[(head + count) % capacity] = value
        count += 1
        return true
    }

    @discardableResult
    mutating func dequeue() -> Int? {
        guard count > 0 else { return nil }
        let value = buffer[head]
        head = (head + 1) % capacity
        count -= 1
        return value
    }

    var contents: [Int] {
        (0..<count).map { buffer[(head + $0) % capacity] }
    }
}

var queue = CircularQueue(capacity: 3)
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.dequeue()
queue.enqueue(4)
print(queue.contents.map(String.init).joined(separator: " "))
