struct DivError: Error {
    let message: String
}

func safeDiv(_ a: Int, _ b: Int) -> Result<Int, DivError> {
    guard b != 0 else { return .failure(DivError(message: "divide by zero")) }
    return .success(a / b)
}

func show(_ r: Result<Int, DivError>) {
    switch r {
    case .success(let v): print("ok: \(v)")
    case .failure(let e): print("err: \(e.message)")
    }
}

show(safeDiv(10, 2))
show(safeDiv(1, 0))
