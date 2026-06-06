// Concat: subscribe to the second source only after the first completes.
// A minimal push-based Observable implemented from scratch — fully synchronous.

struct Observer<T> {
    let next: (T) -> Void
    let complete: () -> Void
}

struct Observable<T> {
    let subscribe: (Observer<T>) -> Void
}

/// Emits the given values synchronously, then completes.
func of<T>(_ values: [T]) -> Observable<T> {
    Observable { observer in
        for value in values {
            observer.next(value)
        }
        observer.complete()
    }
}

/// concat(a, b): subscribe to `a`; on a.complete, subscribe to `b`;
/// on b.complete, complete.
func concat<T>(_ a: Observable<T>, _ b: Observable<T>) -> Observable<T> {
    Observable { observer in
        a.subscribe(Observer(
            next: observer.next,
            complete: {
                b.subscribe(Observer(
                    next: observer.next,
                    complete: observer.complete
                ))
            }
        ))
    }
}

let first = of([1, 2])
let second = of([3, 4])

concat(first, second).subscribe(Observer(
    next: { print($0) },
    complete: {}
))
