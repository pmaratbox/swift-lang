// A BehaviorSubject holds a current value and replays it to each new subscriber.

final class BehaviorSubject {
    private var current: Int
    private var observers: [(Int) -> Void] = []

    init(_ initial: Int) {
        current = initial
    }

    func subscribe(_ observer: @escaping (Int) -> Void) {
        observers.append(observer)
        observer(current) // replay the current value immediately
    }

    func next(_ value: Int) {
        current = value
        for observer in observers {
            observer(value)
        }
    }
}

let subject = BehaviorSubject(0)

subject.subscribe { print("A: \($0)") }
subject.next(1)
subject.subscribe { print("B: \($0)") }
subject.next(2)
