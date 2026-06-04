class Shape {
    func describe() -> String { "shape" }
}

class Circle: Shape {
    override func describe() -> String { "circle" }
}

class Square: Shape {
    override func describe() -> String { "square" }
}

class Triangle: Shape {
    override func describe() -> String { "triangle" }
}

let shapes: [Shape] = [Circle(), Square(), Triangle()]
print(shapes.map { $0.describe() }.joined(separator: " "))
