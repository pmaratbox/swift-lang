struct TooLargeError: Error {
    let message = "value too large"
}

func check(_ n: Int) throws {
    if n > 100 {
        throw TooLargeError()
    }
}

do {
    try check(200)
} catch let e as TooLargeError {
    print("error: \(e.message)")
}
