protocol Greeter {
    func greet() -> String
}

extension Greeter {
    func greet() -> String { "hi" }
}

struct Defaulter: Greeter {}

struct Overrider: Greeter {
    func greet() -> String { "hey" }
}

print("\(Defaulter().greet()) \(Overrider().greet())")
