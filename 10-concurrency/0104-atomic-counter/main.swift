import Foundation
import Synchronization

let counter = Atomic<Int>(0)
let group = DispatchGroup()
let queue = DispatchQueue.global()

for _ in 0..<10 {
    queue.async(group: group) {
        for _ in 0..<100 {
            counter.wrappingAdd(1, ordering: .relaxed)
        }
    }
}

group.wait()
print(counter.load(ordering: .relaxed))
