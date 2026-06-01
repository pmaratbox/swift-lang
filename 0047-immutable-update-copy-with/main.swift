struct Point {
    var x: Int
    var y: Int
}

let p1 = Point(x: 1, y: 2)
var p2 = p1
p2.x = 9
print("original: (\(p1.x), \(p1.y))")
print("updated: (\(p2.x), \(p2.y))")
