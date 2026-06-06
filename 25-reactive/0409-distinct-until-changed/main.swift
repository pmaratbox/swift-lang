// A minimal push-based Observable implemented from scratch.
final class Observable<T> {
    let subscribe: (_ next: @escaping (T) -> Void) -> Void
    init(_ subscribe: @escaping (_ next: @escaping (T) -> Void) -> Void) {
        self.subscribe = subscribe
    }
}

extension Observable where T: Equatable {
    // Track the last emitted value; forward only when the new value differs.
    func distinctUntilChanged() -> Observable<T> {
        Observable<T> { downstream in
            var last: T? = nil
            self.subscribe { value in
                if last != value {
                    last = value
                    downstream(value)
                }
            }
        }
    }
}

// A source that synchronously emits a fixed sequence of values.
func from<T>(_ values: [T]) -> Observable<T> {
    Observable<T> { next in
        for v in values { next(v) }
    }
}

from([1, 1, 2, 2, 2, 3, 1])
    .distinctUntilChanged()
    .subscribe { print($0) }
