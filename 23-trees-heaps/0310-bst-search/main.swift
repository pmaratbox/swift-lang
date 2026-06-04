final class Node {
    let value: Int
    var left: Node?
    var right: Node?
    init(_ value: Int) { self.value = value }
}

final class BST {
    var root: Node?

    func insert(_ value: Int) {
        guard let r = root else { root = Node(value); return }
        var cur = r
        while true {
            if value < cur.value {
                if let l = cur.left { cur = l } else { cur.left = Node(value); return }
            } else {
                if let rr = cur.right { cur = rr } else { cur.right = Node(value); return }
            }
        }
    }

    func search(_ key: Int) -> Bool {
        var cur = root
        while let c = cur {
            if key == c.value { return true }
            cur = key < c.value ? c.left : c.right
        }
        return false
    }
}

let bst = BST()
for v in [5, 3, 8, 1, 4] { bst.insert(v) }
let a = bst.search(4) ? "yes" : "no"
let b = bst.search(6) ? "yes" : "no"
print("\(a) \(b)")
