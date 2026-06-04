struct RingBuffer {
    private var storage: [Int?]
    private var head = 0
    private var count = 0
    let capacity: Int

    init(capacity: Int) {
        self.capacity = capacity
        self.storage = Array(repeating: nil, count: capacity)
    }

    mutating func push(_ value: Int) {
        let index = (head + count) % capacity
        storage[index] = value
        if count == capacity {
            head = (head + 1) % capacity
        } else {
            count += 1
        }
    }

    func contents() -> [Int] {
        (0..<count).compactMap { storage[(head + $0) % capacity] }
    }
}

var buffer = RingBuffer(capacity: 3)
for value in [1, 2, 3, 4, 5] {
    buffer.push(value)
}
print(buffer.contents().map(String.init).joined(separator: " "))
