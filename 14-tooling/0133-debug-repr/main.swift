struct Point: CustomDebugStringConvertible {
    let x: Int
    let y: Int

    var debugDescription: String {
        "Point(x=\(x), y=\(y))"
    }
}

let p = Point(x: 1, y: 2)
print(String(reflecting: p))
