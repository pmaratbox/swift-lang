// Debounce on a virtual-time scheduler — fully synchronous, deterministic.

final class Scheduler {
    private struct Task {
        let time: Int
        let seq: Int
        let action: () -> Void
        var alive: Bool
    }

    final class Token {
        let id: Int
        init(_ id: Int) { self.id = id }
    }

    private(set) var now = 0
    private var queue: [Task] = []
    private var nextSeq = 0
    private var byId: [Int: Int] = [:]   // token id -> index in queue

    @discardableResult
    func schedule(at time: Int, _ action: @escaping () -> Void) -> Token {
        let seq = nextSeq
        nextSeq += 1
        byId[seq] = queue.count
        queue.append(Task(time: time, seq: seq, action: action, alive: true))
        return Token(seq)
    }

    func cancel(_ token: Token?) {
        guard let token, let idx = byId[token.id] else { return }
        queue[idx].alive = false
    }

    func run() {
        while true {
            // Find smallest (time, seq) among alive tasks.
            var best = -1
            for i in queue.indices where queue[i].alive {
                if best == -1
                    || queue[i].time < queue[best].time
                    || (queue[i].time == queue[best].time && queue[i].seq < queue[best].seq) {
                    best = i
                }
            }
            if best == -1 { break }
            queue[best].alive = false
            now = queue[best].time
            queue[best].action()
        }
    }
}

// Source emits (value, time) pairs by scheduling them on the virtual clock.
func source(_ events: [(String, Int)], on scheduler: Scheduler,
            next: @escaping (String) -> Void, complete: @escaping () -> Void) {
    let endTime = events.map { $0.1 }.max() ?? 0
    for (value, time) in events {
        scheduler.schedule(at: time) { next(value) }
    }
    scheduler.schedule(at: endTime) { complete() }
}

func debounce(_ window: Int, on scheduler: Scheduler,
              source: (@escaping (String) -> Void, @escaping () -> Void) -> Void,
              emit: @escaping (String) -> Void) {
    var pending: Scheduler.Token?
    source({ value in
        scheduler.cancel(pending)
        pending = scheduler.schedule(at: scheduler.now + window) {
            emit(value)
        }
    }, {
        // stream ends; any still-pending emit will fire on its own.
    })
}

let scheduler = Scheduler()

debounce(30, on: scheduler, source: { next, complete in
    source([("a", 10), ("b", 20), ("c", 100)], on: scheduler, next: next, complete: complete)
}, emit: { value in
    print(value)
})

scheduler.run()
