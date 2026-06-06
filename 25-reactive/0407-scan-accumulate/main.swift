// A push-based Observable implemented from scratch.
// An observer is a set of callbacks; subscribe wires a producer to it.

struct Observer<T> {
    let next: (T) -> Void
    let complete: () -> Void
}

struct Observable<T> {
    let subscribe: (Observer<T>) -> Void
}

// Emits a fixed sequence of values, then completes.
func fromArray<T>(_ values: [T]) -> Observable<T> {
    Observable { observer in
        for v in values { observer.next(v) }
        observer.complete()
    }
}

// scan keeps state seeded with acc; for each value state = f(state, value) and emits state.
func scan<T, A>(_ source: Observable<T>, _ acc: A, _ f: @escaping (A, T) -> A) -> Observable<A> {
    Observable { observer in
        var state = acc
        source.subscribe(Observer(
            next: { value in
                state = f(state, value)
                observer.next(state)
            },
            complete: { observer.complete() }
        ))
    }
}

let source = fromArray([1, 2, 3, 4])
let running = scan(source, 0) { $0 + $1 }

running.subscribe(Observer(
    next: { print($0) },
    complete: {}
))
