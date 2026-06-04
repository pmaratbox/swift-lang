struct Point {
    let x: Int
    let y: Int
}

let p = Point(x: 0, y: 0)
let names = Mirror(reflecting: p).children.compactMap { $0.label }
print(names.joined(separator: " "))
