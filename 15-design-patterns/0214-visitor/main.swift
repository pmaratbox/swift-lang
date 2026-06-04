protocol Node {
    func accept(_ visitor: SumVisitor)
}

struct Leaf: Node {
    let value: Int
    func accept(_ visitor: SumVisitor) { visitor.visit(self) }
}

final class SumVisitor {
    private(set) var total = 0
    func visit(_ leaf: Leaf) { total += leaf.value }
}

let nodes: [Node] = [Leaf(value: 1), Leaf(value: 2), Leaf(value: 3)]
let visitor = SumVisitor()
for node in nodes { node.accept(visitor) }
print(visitor.total)
