protocol Color {
    func name() -> String
}

struct Red: Color {
    func name() -> String { "red" }
}

protocol Shape {
    func describe() -> String
}

struct Circle: Shape {
    let color: Color
    func describe() -> String { "\(color.name()) circle" }
}

let circle: Shape = Circle(color: Red())
print(circle.describe())
