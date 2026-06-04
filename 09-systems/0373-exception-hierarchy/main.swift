protocol BaseError: Error {}

struct SpecificError: BaseError {}

func mayFail() throws {
    throw SpecificError()
}

do {
    try mayFail()
} catch is BaseError {
    print("caught base")
}
