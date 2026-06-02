enum Shape {
    case rect(Int, Int)
    case square(Int)
}

func area(_ shape: Shape) -> Int {
    switch shape {
    case .rect(let w, let h): return w * h
    case .square(let s): return s * s
    }
}

for shape in [Shape.rect(2, 3), Shape.square(4)] {
    print(area(shape))
}
