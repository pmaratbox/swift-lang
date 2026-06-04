struct DSU {
    var parent: [Int]
    init(_ n: Int) { parent = Array(0..<n) }
    mutating func find(_ x: Int) -> Int {
        if parent[x] != x { parent[x] = find(parent[x]) }
        return parent[x]
    }
    mutating func union(_ a: Int, _ b: Int) -> Bool {
        let ra = find(a), rb = find(b)
        if ra == rb { return false }
        parent[ra] = rb
        return true
    }
}

let n = 3
let edges = [(0, 1, 1), (1, 2, 2), (0, 2, 3)].sorted { $0.2 < $1.2 }

var dsu = DSU(n)
var total = 0
for (u, v, w) in edges where dsu.union(u, v) {
    total += w
}

print(total)
