import Foundation
import Synchronization

let counter = Atomic<Int>(0)
let target = 100

func work(_ times: Int) {
    for _ in 0..<times {
        var current = counter.load(ordering: .relaxed)
        while true {
            let (exchanged, original) = counter.compareExchange(
                expected: current,
                desired: current + 1,
                ordering: .relaxed)
            if exchanged { break }
            current = original
        }
    }
}

var threads: [Thread] = []
for _ in 0..<4 {
    let t = Thread { work(25) }
    threads.append(t)
    t.start()
}
while counter.load(ordering: .relaxed) < target {
    usleep(1000)
}
print(counter.load(ordering: .relaxed))
