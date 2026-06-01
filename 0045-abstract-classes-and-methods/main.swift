protocol Shape {
    func area() -> Int
}

extension Shape {
    func describe() -> String {
        return "area: \(area())"
    }
}

struct Square: Shape {
    let side: Int
    func area() -> Int {
        return side * side
    }
}

print(Square(side: 3).describe())
