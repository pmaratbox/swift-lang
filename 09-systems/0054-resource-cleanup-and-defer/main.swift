do {
    print("open")
    defer { print("close") }
    print("use")
}
