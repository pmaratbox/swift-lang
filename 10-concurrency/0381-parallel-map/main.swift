import Foundation

let input = [1, 2, 3, 4]
var results = [Int](repeating: 0, count: input.count)
let lock = NSLock()

DispatchQueue.concurrentPerform(iterations: input.count) { i in
    let squared = input[i] * input[i]
    lock.lock()
    results[i] = squared
    lock.unlock()
}

print(results.map(String.init).joined(separator: " "))
