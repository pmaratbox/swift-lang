import Foundation

let group = DispatchGroup()
var joined = 0
let lock = NSLock()

for _ in 0..<3 {
    group.enter()
    Thread.detachNewThread {
        // trivial work
        _ = (1...10).reduce(0, +)
        lock.lock()
        joined += 1
        lock.unlock()
        group.leave()
    }
}

group.wait()
print("done: \(joined)")
