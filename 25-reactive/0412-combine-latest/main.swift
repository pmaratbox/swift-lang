// combineLatest of two timed streams using a virtual-time scheduler.

// A scheduled task: virtual time, insertion order, callback, and a liveness flag.
final class Task {
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

// Virtual-time scheduler: pops the smallest (time, seq), advancing a virtual clock.
final class Scheduler {
    private var queue: [Task] = []
    private var nextSeq = 0
    private(set) var clock = 0

    @discardableResult
    func schedule(_ time: Int, _ action: @escaping () -> Void) -> Task {
        let task = Task(time: time, seq: nextSeq, action: action)
        nextSeq += 1
        queue.append(task)
        return task
    }

    func cancel(_ task: Task) { task.cancelled = true }

    func run() {
        while !queue.isEmpty {
            // Find the smallest (time, seq).
            var idx = 0
            for i in 1..<queue.count {
                let t = queue[i], best = queue[idx]
                if t.time < best.time || (t.time == best.time && t.seq < best.seq) {
                    idx = i
                }
            }
            let task = queue.remove(at: idx)
            if task.cancelled { continue }
            clock = task.time
            task.action()
        }
    }
}

// A push-based observable: subscribe wires the producer to a next callback.
struct Observable<T> {
    let subscribe: (@escaping (T) -> Void) -> Void
}

// A timed source emits its values by scheduling them at the given virtual times.
func timed<T>(_ scheduler: Scheduler, _ events: [(Int, T)]) -> Observable<T> {
    Observable { next in
        for (time, value) in events {
            scheduler.schedule(time) { next(value) }
        }
    }
}

// combineLatest: emit the pair of latest values whenever either source emits,
// once both have produced at least one value.
func combineLatest<A, B>(
    _ a: Observable<A>, _ b: Observable<B>, _ next: @escaping (A, B) -> Void
) {
    var latestA: A? = nil
    var latestB: B? = nil
    a.subscribe { value in
        latestA = value
        if let lb = latestB { next(value, lb) }
    }
    b.subscribe { value in
        latestB = value
        if let la = latestA { next(la, value) }
    }
}

let scheduler = Scheduler()
let a = timed(scheduler, [(1, 1), (3, 2)])
let b = timed(scheduler, [(2, 10)])

combineLatest(a, b) { av, bv in
    print("(\(av), \(bv))")
}

scheduler.run()
