import Foundation

let total = 3
let lock = NSCondition()
var arrived = 0

func worker() {
    lock.lock()
    arrived += 1
    if arrived == total {
        lock.broadcast()
    } else {
        while arrived < total {
            lock.wait()
        }
    }
    lock.unlock()
}

var threads: [Thread] = []
for _ in 0..<total {
    let t = Thread { worker() }
    threads.append(t)
    t.start()
}

lock.lock()
while arrived < total {
    lock.wait()
}
lock.unlock()

print("all reached: \(total)")
