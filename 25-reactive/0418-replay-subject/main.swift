// ReplaySubject: buffers the last N values and replays them to late subscribers,
// who then continue to receive subsequent values.

final class Observer {
    let next: (Int) -> Void
    init(_ next: @escaping (Int) -> Void) { self.next = next }
}

final class ReplaySubject {
    private let bufferSize: Int
    private var buffer: [Int] = []
    private var observers: [Observer] = []

    init(bufferSize: Int) { self.bufferSize = bufferSize }

    func subscribe(_ observer: Observer) {
        // Replay buffered values to the late subscriber first.
        for value in buffer { observer.next(value) }
        observers.append(observer)
    }

    func next(_ value: Int) {
        buffer.append(value)
        if buffer.count > bufferSize { buffer.removeFirst(buffer.count - bufferSize) }
        for observer in observers { observer.next(value) }
    }
}

let subject = ReplaySubject(bufferSize: 2)

// Emit 1, 2, 3 before anyone subscribes; buffer keeps the last 2 -> [2, 3].
subject.next(1)
subject.next(2)
subject.next(3)

// Late subscriber receives the buffered 2, 3 immediately, then new values.
subject.subscribe(Observer { value in print(value) })

subject.next(4)
