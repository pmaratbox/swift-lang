struct CatchFinally: Error {}

func run() {
    defer { print("cleanup") }
    do {
        throw CatchFinally()
    } catch {
        print("caught")
    }
}

run()
