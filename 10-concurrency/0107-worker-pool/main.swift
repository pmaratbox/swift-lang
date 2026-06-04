import Foundation

let inputs = [1, 2, 3, 4]
var results: [Int] = []
let lock = NSLock()
let group = DispatchGroup()
let queue = DispatchQueue.global()

// Distribute the squaring across a pool of concurrent workers.
for n in inputs {
    queue.async(group: group) {
        let square = n * n
        lock.lock()
        results.append(square)
        lock.unlock()
    }
}

group.wait()
results.sort()
print(results.map(String.init).joined(separator: " "))
