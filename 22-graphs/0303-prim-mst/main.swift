struct Edge { let to: Int; let w: Int }

let n = 4
var adj = [[Edge]](repeating: [], count: n)
func addEdge(_ a: Int, _ b: Int, _ w: Int) {
    adj[a].append(Edge(to: b, w: w))
    adj[b].append(Edge(to: a, w: w))
}
addEdge(0, 1, 1)
addEdge(1, 2, 2)
addEdge(2, 3, 3)

var inTree = [Bool](repeating: false, count: n)
var key = [Int](repeating: Int.max, count: n)
key[0] = 0
var total = 0

for _ in 0..<n {
    var u = -1
    for v in 0..<n where !inTree[v] && key[v] != Int.max {
        if u == -1 || key[v] < key[u] { u = v }
    }
    if u == -1 { break }
    inTree[u] = true
    total += key[u]
    for e in adj[u] where !inTree[e.to] && e.w < key[e.to] {
        key[e.to] = e.w
    }
}

print(total)
