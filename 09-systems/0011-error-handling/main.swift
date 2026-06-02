enum DivisionError: Error {
    case divisionByZero
}

func divide(_ a: Int, _ b: Int) throws -> Int {
    if b == 0 {
        throw DivisionError.divisionByZero
    }
    return a / b
}

print("10 / 2 = \(try! divide(10, 2))")

do {
    _ = try divide(10, 0)
} catch DivisionError.divisionByZero {
    print("error: division by zero")
}
