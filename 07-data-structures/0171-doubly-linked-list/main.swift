final class Node {
    let value: Int
    var prev: Node?
    var next: Node?
    init(_ value: Int) { self.value = value }
}

let n1 = Node(1)
let n2 = Node(2)
let n3 = Node(3)
n1.next = n2; n2.prev = n1
n2.next = n3; n3.prev = n2

var forward: [Int] = []
var cursor: Node? = n1
while let node = cursor {
    forward.append(node.value)
    cursor = node.next
}

var backward: [Int] = []
cursor = n3
while let node = cursor {
    backward.append(node.value)
    cursor = node.prev
}

print(forward.map(String.init).joined(separator: " "))
print(backward.map(String.init).joined(separator: " "))
