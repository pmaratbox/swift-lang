import Foundation

// A simple thread-safe queue acting as a channel.
final class Channel {
    private var items: [Int] = []
    private let cond = NSCondition()
    private var closed = false

    func send(_ value: Int) {
        cond.lock()
        items.append(value)
        cond.signal()
        cond.unlock()
    }

    func close() {
        cond.lock()
        closed = true
        cond.signal()
        cond.unlock()
    }

    func receive() -> Int? {
        cond.lock()
        while items.isEmpty && !closed {
            cond.wait()
        }
        defer { cond.unlock() }
        if items.isEmpty { return nil }
        return items.removeFirst()
    }
}

let channel = Channel()

Thread.detachNewThread {
    for v in [1, 2, 3] { channel.send(v) }
    channel.close()
}

var received: [Int] = []
while let v = channel.receive() {
    received.append(v)
}

print(received.map(String.init).joined(separator: " "))
