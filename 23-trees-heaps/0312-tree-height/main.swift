final class Node {
    let value: Int
    var left: Node?
    var right: Node?
    init(_ value: Int) { self.value = value }
}

func insert(_ node: Node?, _ value: Int) -> Node {
    guard let node = node else { return Node(value) }
    if value < node.value {
        node.left = insert(node.left, value)
    } else {
        node.right = insert(node.right, value)
    }
    return node
}

func height(_ node: Node?) -> Int {
    guard let node = node else { return 0 }
    return 1 + max(height(node.left), height(node.right))
}

var root: Node? = nil
for v in [5, 3, 8, 1, 4] { root = insert(root, v) }
print(height(root))
