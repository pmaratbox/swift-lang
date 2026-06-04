import Foundation
import Synchronization

let initCount = Atomic<Int>(0)

// A lazily-initialized global is guaranteed to run its initializer exactly
// once, even under racing access from multiple threads.
let shared: Int = {
    initCount.wrappingAdd(1, ordering: .relaxed)
    return 42
}()

let group = DispatchGroup()
let queue = DispatchQueue.global()

for _ in 0..<10 {
    queue.async(group: group) {
        _ = shared   // first touch triggers the one-time initializer
    }
}

group.wait()
print("init count: \(initCount.load(ordering: .relaxed))")
