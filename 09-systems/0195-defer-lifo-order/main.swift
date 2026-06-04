func run() {
    var parts: [String] = []
    defer { print(parts.joined(separator: " ")) }
    defer { parts.append("1") }
    defer { parts.append("2") }
    defer { parts.append("3") }
    return
}

run()
