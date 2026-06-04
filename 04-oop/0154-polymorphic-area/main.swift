protocol Shape {
    func area() -> Int
}

struct Rectangle: Shape {
    let width: Int
    let height: Int
    func area() -> Int { width * height }
}

struct Triangle: Shape {
    let base: Int
    let height: Int
    func area() -> Int { base * height / 2 }
}

let shapes: [Shape] = [Rectangle(width: 2, height: 3), Triangle(base: 4, height: 4)]
let total = shapes.reduce(0) { $0 + $1.area() }
print("total area: \(total)")
