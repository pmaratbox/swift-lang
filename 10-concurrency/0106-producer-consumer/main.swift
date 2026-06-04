import Foundation

// Bounded blocking queue shared by producer and consumer.
final class BoundedQueue {
    private var items: [Int] = []
    private let capacity: Int
    private let cond = NSCondition()
    private var closed = false

    init(capacity: Int) { self.capacity = capacity }

    func put(_ value: Int) {
        cond.lock()
        while items.count == capacity { cond.wait() }
        items.append(value)
        cond.signal()
        cond.unlock()
    }

    func close() {
        cond.lock()
        closed = true
        cond.broadcast()
        cond.unlock()
    }

    func take() -> Int? {
        cond.lock()
        while items.isEmpty && !closed { cond.wait() }
        defer { cond.unlock() }
        if items.isEmpty { return nil }
        let v = items.removeFirst()
        cond.signal()
        return v
    }
}

let queue = BoundedQueue(capacity: 2)

Thread.detachNewThread {
    for v in 1...5 { queue.put(v) }
    queue.close()
}

var sum = 0
while let v = queue.take() { sum += v }

print(sum)
