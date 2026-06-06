// Cold vs Hot Observable, implemented from scratch (synchronous, deterministic).

// An observer: just a closure that receives the next value.
typealias Observer = (Int) -> Void

// A cold observable re-runs its producer for each subscriber.
struct ColdObservable {
    let producer: (@escaping Observer) -> Void
    func subscribe(_ observer: @escaping Observer) {
        producer(observer)  // fresh execution per subscriber
    }
}

// A hot observable shares one execution: emit() pushes to all current observers.
final class HotObservable {
    private var observers: [Observer] = []
    func subscribe(_ observer: @escaping Observer) {
        observers.append(observer)  // late subscribers miss earlier values
    }
    func emit(_ value: Int) {
        for o in observers { o(value) }
    }
}

// COLD: each subscriber gets its own 1 2 3.
let cold = ColdObservable { observer in
    for v in [1, 2, 3] { observer(v) }
}

var coldA: [Int] = []
var coldB: [Int] = []
cold.subscribe { coldA.append($0) }
cold.subscribe { coldB.append($0) }

// HOT: A subscribes, producer emits 1, then B subscribes, then emits 2 and 3.
let hot = HotObservable()
var hotA: [Int] = []
var hotB: [Int] = []
hot.subscribe { hotA.append($0) }
hot.emit(1)
hot.subscribe { hotB.append($0) }
hot.emit(2)
hot.emit(3)

func join(_ xs: [Int]) -> String { xs.map(String.init).joined(separator: " ") }

print("cold A: \(join(coldA))")
print("cold B: \(join(coldB))")
print("hot A: \(join(hotA))")
print("hot B: \(join(hotB))")
