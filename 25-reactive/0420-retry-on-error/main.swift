// Retry On Error: retry(n) resubscribes to the source on error up to n times.

final class Observer {
    let next: (Int) -> Void
    let error: (String) -> Void
    let complete: () -> Void
    init(next: @escaping (Int) -> Void,
         error: @escaping (String) -> Void,
         complete: @escaping () -> Void) {
        self.next = next
        self.error = error
        self.complete = complete
    }
}

// A push-based Observable built from scratch.
struct Observable {
    let subscribe: (Observer) -> Void

    // retry(n): on error, resubscribe to the source up to n more times.
    func retry(_ n: Int) -> Observable {
        Observable { observer in
            var attemptsLeft = n
            func run() {
                let proxy = Observer(
                    next: observer.next,
                    error: { err in
                        if attemptsLeft > 0 {
                            attemptsLeft -= 1
                            run()
                        } else {
                            observer.error(err)
                        }
                    },
                    complete: observer.complete
                )
                self.subscribe(proxy)
            }
            run()
        }
    }
}

// Source: prints "attempt <k>" per subscription; errors for k<3, succeeds at k=3.
var subscriptionCount = 0
let source = Observable { observer in
    subscriptionCount += 1
    let k = subscriptionCount
    print("attempt \(k)")
    if k < 3 {
        observer.error("fail \(k)")
    } else {
        print("ok")
        observer.complete()
    }
}

source.retry(2).subscribe(Observer(
    next: { _ in },
    error: { err in print("error: \(err)") },
    complete: { }
))
