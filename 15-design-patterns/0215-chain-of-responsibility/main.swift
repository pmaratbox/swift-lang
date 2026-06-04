final class Handler {
    let level: Int
    var next: Handler?

    init(level: Int) { self.level = level }

    func handle(_ request: Int) {
        if request == level {
            print("handled by \(level)")
        } else {
            next?.handle(request)
        }
    }
}

let h1 = Handler(level: 1)
let h2 = Handler(level: 2)
let h3 = Handler(level: 3)
h1.next = h2
h2.next = h3

h1.handle(2)
