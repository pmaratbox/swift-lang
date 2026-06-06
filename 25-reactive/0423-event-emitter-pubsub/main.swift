// EventEmitter (Pub/Sub): on / emit / off over multiple topics.
// Handlers are identified by a token so off() can remove the exact one.

final class EventEmitter {
    typealias Handler = (String) -> Void

    private struct Registration {
        let token: Int
        let handler: Handler
    }

    private var topics: [String: [Registration]] = [:]
    private var nextToken = 0

    @discardableResult
    func on(_ topic: String, _ handler: @escaping Handler) -> Int {
        let token = nextToken
        nextToken += 1
        topics[topic, default: []].append(Registration(token: token, handler: handler))
        return token
    }

    func emit(_ topic: String, _ payload: String) {
        for registration in topics[topic] ?? [] {
            registration.handler(payload)
        }
    }

    func off(_ topic: String, _ token: Int) {
        topics[topic]?.removeAll { $0.token == token }
    }
}

let emitter = EventEmitter()

let h = emitter.on("greet") { payload in print("hi \(payload)") }
emitter.on("bye") { payload in print("bye \(payload)") }

emitter.emit("greet", "ada")
emitter.emit("bye", "ada")

emitter.off("greet", h)
emitter.emit("greet", "x")
