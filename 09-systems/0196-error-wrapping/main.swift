struct Wrapping: Error, CustomStringConvertible {
    let context: String
    let cause: Error
    var description: String { "\(context): \(cause)" }
}

struct Inner: Error, CustomStringConvertible {
    var description: String { "inner" }
}

let wrapped = Wrapping(context: "outer", cause: Inner())
print(wrapped)
