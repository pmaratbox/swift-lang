// A push-based Observable built from scratch: subscribe() returns a
// Subscription whose unsubscribe() flips a "closed" flag. The producer
// checks that flag before each emission, so values after unsubscribe
// are dropped.

final class Subscription {
    private(set) var closed = false
    func unsubscribe() { closed = true }
}

struct Observable<Value> {
    let produce: (_ onNext: (Value, Subscription) -> Void, _ subscription: Subscription) -> Void

    func subscribe(_ onNext: @escaping (Value, Subscription) -> Void) -> Subscription {
        let subscription = Subscription()
        produce(onNext, subscription)
        return subscription
    }
}

// The source would push 1,2,3,4; it checks "closed" before each next.
let numbers = Observable<Int> { onNext, subscription in
    for value in [1, 2, 3, 4] {
        if subscription.closed { break }
        onNext(value, subscription)
    }
}

// Consumer unsubscribes after receiving 2, so 3 and 4 are never delivered.
_ = numbers.subscribe { value, subscription in
    print(value)
    if value == 2 { subscription.unsubscribe() }
}
