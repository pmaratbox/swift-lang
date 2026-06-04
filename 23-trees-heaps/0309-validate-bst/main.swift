final class Node {
    let value: Int
    var left: Node?
    var right: Node?
    init(_ value: Int, _ left: Node? = nil, _ right: Node? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

func isValidBST(_ node: Node?, _ low: Int, _ high: Int) -> Bool {
    guard let node = node else { return true }
    if node.value <= low || node.value >= high { return false }
    return isValidBST(node.left, low, node.value)
        && isValidBST(node.right, node.value, high)
}

func isValid(_ root: Node?) -> Bool {
    isValidBST(root, Int.min, Int.max)
}

// Correct BST: 2 with children 1 and 3
let good = Node(2, Node(1), Node(3))
// Invalid: 5 with right child 4 (out of place)
let bad = Node(5, Node(1), Node(4))

let a = isValid(good) ? "yes" : "no"
let b = isValid(bad) ? "yes" : "no"
print("\(a) \(b)")
