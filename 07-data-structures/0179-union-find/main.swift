struct UnionFind {
    private var parent: [Int]

    init(_ count: Int) {
        parent = Array(0..<count)
    }

    mutating func find(_ x: Int) -> Int {
        if parent[x] != x {
            parent[x] = find(parent[x])
        }
        return parent[x]
    }

    mutating func union(_ a: Int, _ b: Int) {
        parent[find(a)] = find(b)
    }

    mutating func connected(_ a: Int, _ b: Int) -> Bool {
        find(a) == find(b)
    }
}

var uf = UnionFind(4)
uf.union(0, 1)
uf.union(2, 3)
let a = uf.connected(0, 1) ? "yes" : "no"
let b = uf.connected(0, 2) ? "yes" : "no"
print("\(a) \(b)")
