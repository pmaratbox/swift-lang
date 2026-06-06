// SwitchMap: map each outer value to an inner timed stream, but when a new
// outer value arrives cancel the previous inner before starting the new one.
// Driven by a virtual-time scheduler so the timed behaviour is deterministic.

// --- Virtual-time scheduler -------------------------------------------------

final class Scheduler {
    struct Task {
        let time: Int
        let seq: Int
        let action: () -> Void
        var alive: Bool
    }

    private var tasks: [Task] = []
    private var seq = 0
    private(set) var now = 0

    @discardableResult
    func schedule(_ time: Int, _ action: @escaping () -> Void) -> Int {
        let token = seq
        tasks.append(Task(time: time, seq: token, action: action, alive: true))
        seq += 1
        return token
    }

    func cancel(_ token: Int) {
        if let i = tasks.firstIndex(where: { $0.seq == token }) {
            tasks[i].alive = false
        }
    }

    func run() {
        while true {
            // pop the smallest live (time, seq)
            var best: Int? = nil
            for (i, t) in tasks.enumerated() where t.alive {
                if let b = best {
                    if t.time < tasks[b].time || (t.time == tasks[b].time && t.seq < tasks[b].seq) {
                        best = i
                    }
                } else {
                    best = i
                }
            }
            guard let idx = best else { return }
            let task = tasks[idx]
            tasks[idx].alive = false
            now = task.time
            task.action()
        }
    }
}

// --- Minimal push-based Observable -----------------------------------------

struct Observer<T> {
    let next: (T) -> Void
    let complete: () -> Void
}

// Subscribing returns the scheduler tokens this subscription has pending, so a
// caller (switchMap) can cancel them.
struct Observable<T> {
    let subscribe: (Observer<T>) -> [Int]
}

// A timed source: emits each (time, value) by scheduling it, and returns the
// scheduled tokens so the subscription can be cancelled.
func timed<T>(_ scheduler: Scheduler, _ events: [(Int, T)]) -> Observable<T> {
    Observable { observer in
        let base = scheduler.now
        return events.map { (t, v) in
            scheduler.schedule(base + t) { observer.next(v) }
        }
    }
}

// switchMap: on each new outer value, cancel the previous inner's still-pending
// scheduled emissions, then subscribe to the new inner.
func switchMap<A, B>(_ source: Observable<A>,
                     _ project: @escaping (A) -> Observable<B>) -> Observable<B> {
    Observable { observer in
        var currentTokens: [Int] = []
        let inner = Observer<A>(
            next: { value in
                for token in currentTokens { scheduler.cancel(token) }
                let innerObs = project(value)
                currentTokens = innerObs.subscribe(Observer<B>(next: observer.next, complete: {}))
            },
            complete: {}
        )
        return source.subscribe(inner)
    }
}

// --- Lesson -----------------------------------------------------------------

let scheduler = Scheduler()

// Outer schedules (10 -> 1), (20 -> 2).
let outer = timed(scheduler, [(10, 1), (20, 2)])

// For each outer value n: inner schedules (now+5 -> n) and (now+30 -> n*10).
let switched = switchMap(outer) { (n: Int) -> Observable<Int> in
    timed(scheduler, [(5, n), (30, n * 10)])
}

_ = switched.subscribe(Observer<Int>(next: { print($0) }, complete: {}))

scheduler.run()
