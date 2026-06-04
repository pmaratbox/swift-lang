final class Node {
    var value: Int
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

func minNode(_ node: Node) -> Node {
    var cur = node
    while let l = cur.left { cur = l }
    return cur
}

func delete(_ node: Node?, _ value: Int) -> Node? {
    guard let node = node else { return nil }
    if value < node.value {
        node.left = delete(node.left, value)
    } else if value > node.value {
        node.right = delete(node.right, value)
    } else {
        if node.left == nil { return node.right }
        if node.right == nil { return node.left }
        let succ = minNode(node.right!)
        node.value = succ.value
        node.right = delete(node.right, succ.value)
    }
    return node
}

func inorder(_ node: Node?, _ out: inout [Int]) {
    guard let node = node else { return }
    inorder(node.left, &out)
    out.append(node.value)
    inorder(node.right, &out)
}

var root: Node? = nil
for v in [5, 3, 8, 1, 4] { root = insert(root, v) }
root = delete(root, 3)
var result: [Int] = []
inorder(root, &result)
print(result.map(String.init).joined(separator: " "))
