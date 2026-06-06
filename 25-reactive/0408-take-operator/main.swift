// take(n) over an unbounded source of the natural numbers.
// Push-based Observable implemented from scratch, fully synchronous.

final class Subscription {
    private var onCancel: (() -> Void)?
    private(set) var closed = false

    init(_ onCancel: @escaping () -> Void) {
        self.onCancel = onCancel
    }

    func cancel() {
        guard !closed else { return }
        closed = true
        onCancel?()
        onCancel = nil
    }
}

struct Observer<T> {
    let next: (T) -> Void
    let complete: () -> Void
    // The source consults this after each emission so a downstream
    // operator can stop an otherwise infinite producer mid-flight.
    let isStopped: () -> Bool
}

struct Observable<T> {
    let subscribe: (Observer<T>) -> Subscription
}

// Unbounded source: 1, 2, 3, ... It keeps generating until the
// observer reports it is stopped, so `take` can halt it.
func naturals() -> Observable<Int> {
    Observable { observer in
        var n = 1
        while !observer.isStopped() {
            observer.next(n)
            n += 1
        }
        return Subscription {}
    }
}

func take<T>(_ source: Observable<T>, _ count: Int) -> Observable<T> {
    Observable { downstream in
        var taken = 0
        var done = false
        let upstream = source.subscribe(Observer(
            next: { value in
                guard !done else { return }
                downstream.next(value)
                taken += 1
                if taken == count {
                    done = true
                    downstream.complete()
                }
            },
            complete: { downstream.complete() },
            isStopped: { done }
        ))
        return Subscription { upstream.cancel() }
    }
}

_ = take(naturals(), 3).subscribe(Observer(
    next: { print($0) },
    complete: { print("completed") },
    isStopped: { false }
))
