protocol Component {
    func size() -> Int
}

struct Leaf: Component {
    let value: Int
    func size() -> Int { value }
}

struct Composite: Component {
    let children: [Component]
    func size() -> Int { children.reduce(0) { $0 + $1.size() } }
}

let tree = Composite(children: [Leaf(value: 1), Leaf(value: 2), Leaf(value: 3)])
print(tree.size())
