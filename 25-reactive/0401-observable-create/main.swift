// Create an Observable: a push-based producer built from scratch.

struct Observer<Value> {
    let next: (Value) -> Void
    let complete: () -> Void
}

struct Observable<Value> {
    let subscribeHandler: (Observer<Value>) -> Void

    func subscribe(_ observer: Observer<Value>) {
        subscribeHandler(observer)
    }
}

let numbers = Observable<Int> { observer in
    observer.next(1)
    observer.next(2)
    observer.next(3)
    observer.complete()
}

numbers.subscribe(Observer(
    next: { value in print(value) },
    complete: { print("done") }
))
