final class Registry {
    static let shared = Registry()
    private init() {}
}

let a = Registry.shared
let b = Registry.shared
print("same: \(a === b ? "yes" : "no")")
