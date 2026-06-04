protocol Shape {
    var kind: String { get }
}

struct Circle: Shape { let kind = "circle" }
struct Square: Shape { let kind = "square" }

func makeShape(_ name: String) -> Shape {
    switch name {
    case "circle": return Circle()
    default: return Square()
    }
}

let shapes = [makeShape("circle"), makeShape("square")]
print(shapes.map { $0.kind }.joined(separator: " "))
