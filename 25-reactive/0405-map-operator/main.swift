// MapOperator: a from-scratch push-based Observable with a map operator.

struct Observer<T> {
    let next: (T) -> Void
    let error: (Error) -> Void
    let complete: () -> Void
}

struct Observable<T> {
    let subscribeFn: (Observer<T>) -> Void

    func subscribe(_ observer: Observer<T>) {
        subscribeFn(observer)
    }
}

// map returns a new Observable whose next forwards f(value).
func map<A, B>(_ source: Observable<A>, _ f: @escaping (A) -> B) -> Observable<B> {
    Observable { observer in
        source.subscribe(Observer(
            next: { observer.next(f($0)) },
            error: { observer.error($0) },
            complete: { observer.complete() }
        ))
    }
}

// Source emits 1, 2, 3, 4.
let source = Observable<Int> { observer in
    for value in [1, 2, 3, 4] {
        observer.next(value)
    }
    observer.complete()
}

let doubled = map(source) { $0 * 2 }

doubled.subscribe(Observer(
    next: { print($0) },
    error: { _ in },
    complete: { }
))
