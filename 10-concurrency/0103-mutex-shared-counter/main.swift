import Foundation

var counter = 0
let lock = NSLock()
let group = DispatchGroup()
let queue = DispatchQueue.global()

for _ in 0..<10 {
    queue.async(group: group) {
        for _ in 0..<100 {
            lock.lock()
            counter += 1
            lock.unlock()
        }
    }
}

group.wait()
print(counter)
