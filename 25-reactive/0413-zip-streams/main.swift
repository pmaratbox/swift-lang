// Zip Streams: pair values by index and combine them.
// A push-based Observable implemented from scratch, fully synchronous.

final class Observer<T> {
    let next: (T) -> Void
    let complete: () -> Void
    init(next: @escaping (T) -> Void, complete: @escaping () -> Void = {}) {
        self.next = next
        self.complete = complete
    }
}

final class Observable<T> {
    let producer: (Observer<T>) -> Void
    init(_ producer: @escaping (Observer<T>) -> Void) {
        self.producer = producer
    }
    func subscribe(_ observer: Observer<T>) {
        producer(observer)
    }
}

// zip: buffer each source in a per-source queue; whenever both queues are
// non-empty, dequeue one from each and emit combine(x, y).
func zip<A, B, R>(_ a: Observable<A>, _ b: Observable<B>,
                  _ combine: @escaping (A, B) -> R) -> Observable<R> {
    Observable<R> { observer in
        var qa: [A] = []
        var qb: [B] = []
        func drain() {
            while !qa.isEmpty && !qb.isEmpty {
                observer.next(combine(qa.removeFirst(), qb.removeFirst()))
            }
        }
        a.subscribe(Observer<A>(next: { qa.append($0); drain() }))
        b.subscribe(Observer<B>(next: { qb.append($0); drain() }))
        observer.complete()
    }
}

func fromArray<T>(_ values: [T]) -> Observable<T> {
    Observable<T> { observer in
        for v in values { observer.next(v) }
    }
}

let a = fromArray([1, 2, 3])
let b = fromArray([10, 20, 30])

zip(a, b) { $0 + $1 }.subscribe(Observer<Int>(next: { print($0) }))
