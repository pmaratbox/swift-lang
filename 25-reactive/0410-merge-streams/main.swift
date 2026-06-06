// Merge two timed streams using a virtual-time scheduler.

// An observer reacts to pushed values.
struct Observer {
    let next: (Int) -> Void
}

// A scheduled task with its virtual time and insertion order.
final class ScheduledTask {
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

// Virtual-time scheduler: a priority queue ordered by (time, seq).
final class Scheduler {
    private var tasks: [ScheduledTask] = []
    private var nextSeq = 0
    private(set) var clock = 0

    @discardableResult
    func schedule(_ time: Int, _ action: @escaping () -> Void) -> ScheduledTask {
        let task = ScheduledTask(time: time, seq: nextSeq, action: action)
        nextSeq += 1
        tasks.append(task)
        return task
    }

    func cancel(_ task: ScheduledTask) {
        task.cancelled = true
    }

    func run() {
        while !tasks.isEmpty {
            // Pop the smallest (time, seq).
            var bestIndex = 0
            for i in tasks.indices {
                let a = tasks[i], b = tasks[bestIndex]
                if a.time < b.time || (a.time == b.time && a.seq < b.seq) {
                    bestIndex = i
                }
            }
            let task = tasks.remove(at: bestIndex)
            if task.cancelled { continue }
            clock = task.time
            task.action()
        }
    }
}

// A push-based Observable backed by the scheduler.
struct Observable {
    let subscribe: (Observer) -> Void

    // Emit each (time, value) pair by scheduling it on the scheduler.
    static func timed(_ scheduler: Scheduler, _ events: [(time: Int, value: Int)]) -> Observable {
        Observable { observer in
            for event in events {
                scheduler.schedule(event.time) { observer.next(event.value) }
            }
        }
    }
}

// merge: subscribe both sources onto the same observer.
func merge(_ a: Observable, _ b: Observable) -> Observable {
    Observable { observer in
        a.subscribe(observer)
        b.subscribe(observer)
    }
}

let scheduler = Scheduler()
let streamA = Observable.timed(scheduler, [(10, 1), (30, 3), (50, 5)])
let streamB = Observable.timed(scheduler, [(20, 2), (40, 4), (60, 6)])

merge(streamA, streamB).subscribe(Observer { value in
    print(value)
})

scheduler.run()
