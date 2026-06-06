// A push-based Observable implemented from scratch.
// An observer reacts to next / error / complete; subscribe wires a producer to it.

struct Observer<T> {
    let next: (T) -> Void
    let error: (Error) -> Void
    let complete: () -> Void
}

struct Observable<T> {
    let subscribe: (Observer<T>) -> Void
}

struct StreamError: Error {}

// catchError forwards next values, but on error subscribes to the fallback
// instead of propagating the error.
func catchError<T>(_ source: Observable<T>, _ fallback: Observable<T>) -> Observable<T> {
    Observable { observer in
        source.subscribe(Observer(
            next: observer.next,
            error: { _ in fallback.subscribe(observer) },
            complete: observer.complete
        ))
    }
}

// Source emits 1, 2, then signals error.
let source = Observable<Int> { observer in
    observer.next(1)
    observer.next(2)
    observer.error(StreamError())
}

// Fallback emits 9 then completes.
let fallback = Observable<Int> { observer in
    observer.next(9)
    observer.complete()
}

catchError(source, fallback).subscribe(Observer(
    next: { print($0) },
    error: { _ in },
    complete: {}
))
