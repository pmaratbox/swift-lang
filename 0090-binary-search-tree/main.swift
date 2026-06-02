class Node {
    var value: Int
    var left: Node?
    var right: Node?
    init(_ value: Int) {
        self.value = value
    }
}

func insert(_ root: Node?, _ value: Int) -> Node {
    guard let node = root else { return Node(value) }
    if value < node.value {
        node.left = insert(node.left, value)
    } else {
        node.right = insert(node.right, value)
    }
    return node
}

func inorder(_ root: Node?, _ out: inout [Int]) {
    guard let node = root else { return }
    inorder(node.left, &out)
    out.append(node.value)
    inorder(node.right, &out)
}

var root: Node? = nil
for v in [5, 3, 8, 1, 4] {
    root = insert(root, v)
}
var out: [Int] = []
inorder(root, &out)
print(out.map { String($0) }.joined(separator: " "))
