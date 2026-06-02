struct Point {
    let x: Int
    let y: Int

    static func + (a: Point, b: Point) -> Point {
        return Point(x: a.x + b.x, y: a.y + b.y)
    }
}

let p = Point(x: 1, y: 2) + Point(x: 3, y: 4)
print("(\(p.x), \(p.y))")
