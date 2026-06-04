struct Permission: OptionSet {
    let rawValue: Int
    static let read = Permission(rawValue: 1)
    static let write = Permission(rawValue: 2)
}

let flags: Permission = [.read, .write]

print("\(flags.rawValue) \(flags.contains(.write) ? "yes" : "no")")
