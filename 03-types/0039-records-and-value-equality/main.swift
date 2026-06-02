struct Point: Equatable {
    let x: Int
    let y: Int
}

let p1 = Point(x: 1, y: 2)
let p2 = Point(x: 1, y: 2)
print("point: (\(p1.x), \(p1.y))")
print("equal: \(p1 == p2 ? "yes" : "no")")
