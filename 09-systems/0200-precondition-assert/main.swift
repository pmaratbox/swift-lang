struct Assert: Error {}

func check(_ arg: Int) throws {
    guard arg > 0 else { throw Assert() }
}

for arg in [5, -1] {
    do {
        try check(arg)
        print("ok")
    } catch {
        print("error: must be positive")
    }
}
