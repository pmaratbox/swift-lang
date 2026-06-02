class Node {
    let value: Int
    let next: Node?
    init(_ value: Int, _ next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

let head = Node(1, Node(2, Node(3)))

var parts: [String] = []
var node: Node? = head
while let n = node {
    parts.append(String(n.value))
    node = n.next
}
print(parts.joined(separator: " -> "))
