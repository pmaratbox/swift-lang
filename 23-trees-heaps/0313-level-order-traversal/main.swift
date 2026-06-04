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

var root: Node? = nil
for v in [5, 3, 8, 1, 4] { root = insert(root, v) }

var result: [Int] = []
var queue: [Node] = root.map { [$0] } ?? []
var index = 0
while index < queue.count {
    let node = queue[index]
    index += 1
    result.append(node.value)
    if let l = node.left { queue.append(l) }
    if let r = node.right { queue.append(r) }
}
print(result.map(String.init).joined(separator: " "))
