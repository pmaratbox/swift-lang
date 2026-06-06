// A push-based Observable implemented from scratch: an Observer is just a
// closure that receives the next value. A Subject keeps a list of observers,
// `subscribe` appends one, and `next(_:)` multicasts each emission to every
// current observer in registration order.

typealias Observer<T> = (T) -> Void

final class Subject<T> {
    private var observers: [Observer<T>] = []

    func subscribe(_ observer: @escaping Observer<T>) {
        observers.append(observer)
    }

    func next(_ value: T) {
        for observer in observers {
            observer(value)
        }
    }
}

let subject = Subject<Int>()

subject.subscribe { print("obs1: \($0)") }
subject.subscribe { print("obs2: \($0)") }

subject.next(1)
subject.next(2)
