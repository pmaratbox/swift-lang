// Fine-grained reactivity: a writable signal and a derived computed.
// Synchronous, deterministic — no Combine, no timers, no randomness.

final class Signal<T> {
    private var value: T
    private var subscribers: [() -> Void] = []

    init(_ value: T) {
        self.value = value
    }

    func get() -> T {
        return value
    }

    func set(_ newValue: T) {
        value = newValue
        for notify in subscribers {
            notify()
        }
    }

    func subscribe(_ notify: @escaping () -> Void) {
        subscribers.append(notify)
    }
}

final class Computed<T> {
    private var cached: T
    private let compute: () -> T

    init(_ compute: @escaping () -> T, dependencies: [() -> ((@escaping () -> Void) -> Void)]) {
        self.compute = compute
        self.cached = compute()
        let recompute = { [weak self] in
            guard let self = self else { return }
            self.cached = self.compute()
        }
        for dep in dependencies {
            dep()(recompute)
        }
    }

    func get() -> T {
        return cached
    }
}

let a = Signal(2)
let b = Signal(3)

let sum = Computed({ a.get() + b.get() },
                   dependencies: [{ a.subscribe }, { b.subscribe }])

print(sum.get())

a.set(10)

print(sum.get())
