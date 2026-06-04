final class Node {
    let value: String
    var children: [Node]
    init(_ value: String, _ children: [Node] = []) {
        self.value = value
        self.children = children
    }
}

var diameter = 0

// returns height in edges
func height(_ node: Node?) -> Int {
    guard let node = node else { return 0 }
    var first = 0
    var second = 0
    for child in node.children {
        let h = height(child) + 1
        if h > first {
            second = first
            first = h
        } else if h > second {
            second = h
        }
    }
    diameter = max(diameter, first + second)
    return first
}

let c = Node("C")
let d = Node("D")
let a = Node("A", [c, d])
let b = Node("B")
let root = Node("root", [a, b])

_ = height(root)
print(diameter)
