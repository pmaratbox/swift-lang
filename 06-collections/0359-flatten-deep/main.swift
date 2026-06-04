indirect enum Nested {
    case leaf(Int)
    case list([Nested])
}

func flatten(_ node: Nested) -> [Int] {
    switch node {
    case .leaf(let v):
        return [v]
    case .list(let items):
        return items.flatMap(flatten)
    }
}

let tree: Nested = .list([
    .leaf(1),
    .list([.leaf(2), .list([.leaf(3), .leaf(4)])]),
    .leaf(5),
])

let flat = flatten(tree).map(String.init)
print(flat.joined(separator: " "))
