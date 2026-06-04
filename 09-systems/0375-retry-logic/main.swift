struct OperationError: Error {}

func attempt(_ n: Int) throws {
    if n < 3 { throw OperationError() }
}

let maxAttempts = 5
for n in 1...maxAttempts {
    do {
        try attempt(n)
        print("ok after \(n)")
        break
    } catch {
        continue
    }
}
