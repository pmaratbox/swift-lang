protocol Observer {
    func update(_ value: Int)
}

struct PrintObserver: Observer {
    let id: String
    func update(_ value: Int) {
        print("\(id): \(value)")
    }
}

final class Subject {
    private var observers: [Observer] = []
    func register(_ observer: Observer) { observers.append(observer) }
    func notify(_ value: Int) {
        for observer in observers { observer.update(value) }
    }
}

let subject = Subject()
subject.register(PrintObserver(id: "obs1"))
subject.register(PrintObserver(id: "obs2"))
subject.notify(5)
