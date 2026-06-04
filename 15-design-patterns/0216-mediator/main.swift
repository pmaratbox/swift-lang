final class Mediator {
    var b: Colleague?
    func send(_ message: String) {
        b?.receive(message)
    }
}

final class Colleague {
    let name: String
    let mediator: Mediator
    init(name: String, mediator: Mediator) {
        self.name = name
        self.mediator = mediator
    }
    func send(_ message: String) { mediator.send(message) }
    func receive(_ message: String) { print("\(name) got: \(message)") }
}

let mediator = Mediator()
let a = Colleague(name: "A", mediator: mediator)
let b = Colleague(name: "B", mediator: mediator)
mediator.b = b
a.send("hi")
