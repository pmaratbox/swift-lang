// Throttle (leading edge) on a virtual-time scheduler.

final class Scheduler {
    private final class Task {
        let time: Int
        let seq: Int
        let action: () -> Void
        var cancelled = false
        init(time: Int, seq: Int, action: @escaping () -> Void) {
            self.time = time
            self.seq = seq
            self.action = action
        }
    }

    private var queue: [Task] = []
    private var seqCounter = 0
    private(set) var now = 0

    func schedule(_ time: Int, _ action: @escaping () -> Void) {
        queue.append(Task(time: time, seq: seqCounter, action: action))
        seqCounter += 1
    }

    func run() {
        while true {
            // Pop the smallest live task by (time, seq); ties break on insertion order.
            let live = queue.filter { !$0.cancelled }
            guard let next = live.min(by: {
                $0.time != $1.time ? $0.time < $1.time : $0.seq < $1.seq
            }) else { break }
            next.cancelled = true
            now = next.time
            next.action()
        }
    }
}

final class Throttle {
    private let window: Int
    private var blockUntil = 0
    private let sink: (String) -> Void

    init(window: Int, sink: @escaping (String) -> Void) {
        self.window = window
        self.sink = sink
    }

    func next(_ value: String, at now: Int) {
        guard now >= blockUntil else { return }
        sink(value)
        blockUntil = now + window
    }
}

let scheduler = Scheduler()
let throttle = Throttle(window: 30) { print($0) }

let events: [(String, Int)] = [("a", 10), ("b", 20), ("c", 100), ("d", 110)]
for (value, time) in events {
    scheduler.schedule(time) {
        throttle.next(value, at: scheduler.now)
    }
}

scheduler.run()
