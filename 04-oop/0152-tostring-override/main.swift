struct Point: CustomStringConvertible {
    let x: Int
    let y: Int

    var description: String { "Point(\(x), \(y))" }
}

print(Point(x: 1, y: 2))
