// Observer contract: next* then a single terminal (complete or error).
// Once a terminal fires, the observer is "stopped" and further
// next/terminal calls become no-ops.

final class Observer<Value> {
    private let onNext: (Value) -> Void
    private let onError: (Error) -> Void
    private let onComplete: () -> Void
    private var stopped = false

    init(
        next: @escaping (Value) -> Void,
        error: @escaping (Error) -> Void = { _ in },
        complete: @escaping () -> Void = {}
    ) {
        self.onNext = next
        self.onError = error
        self.onComplete = complete
    }

    func next(_ value: Value) {
        guard !stopped else { return }
        onNext(value)
    }

    func error(_ err: Error) {
        guard !stopped else { return }
        stopped = true
        onError(err)
    }

    func complete() {
        guard !stopped else { return }
        stopped = true
        onComplete()
    }
}

let observer = Observer<Int>(
    next: { print($0) },
    complete: { print("complete") }
)

observer.next(1)
observer.next(2)
observer.complete()
observer.next(3) // ignored: observer already stopped
