protocol Shape {
    func name() -> String
    func area() -> Int
}

struct Rectangle: Shape {
    let width: Int
    let height: Int

    func name() -> String { "rectangle" }
    func area() -> Int { width * height }
}

struct Square: Shape {
    let side: Int

    func name() -> String { "square" }
    func area() -> Int { side * side }
}

let shapes: [Shape] = [Rectangle(width: 3, height: 4), Square(side: 5)]
for s in shapes {
    print("\(s.name()) area: \(s.area())")
}
