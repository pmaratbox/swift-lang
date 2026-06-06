// A push-based Observable implemented from scratch.

struct Observer<T> {
    let next: (T) -> Void
    let error: (Error) -> Void
    let complete: () -> Void
}

struct Observable<T> {
    let subscribe: (Observer<T>) -> Void
}

// Source that emits a fixed sequence of values synchronously.
func from<T>(_ values: [T]) -> Observable<T> {
    Observable { observer in
        for value in values {
            observer.next(value)
        }
        observer.complete()
    }
}

// filter forwards a value only when the predicate holds.
func filter<T>(_ source: Observable<T>, _ pred: @escaping (T) -> Bool) -> Observable<T> {
    Observable { observer in
        source.subscribe(Observer(
            next: { value in
                if pred(value) {
                    observer.next(value)
                }
            },
            error: observer.error,
            complete: observer.complete
        ))
    }
}

let source = from([1, 2, 3, 4, 5, 6])
let evens = filter(source) { $0 % 2 == 0 }

evens.subscribe(Observer(
    next: { print($0) },
    error: { _ in },
    complete: {}
))
