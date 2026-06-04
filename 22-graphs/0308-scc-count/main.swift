let n = 4
let edges = [(0, 1), (1, 2), (2, 0), (2, 3)]

var adj = [[Int]](repeating: [], count: n)
var radj = [[Int]](repeating: [], count: n)
for (u, v) in edges {
    adj[u].append(v)
    radj[v].append(u)
}

// Kosaraju: first pass orders by finish time
var visited = [Bool](repeating: false, count: n)
var order: [Int] = []

func dfs1(_ u: Int) {
    visited[u] = true
    for v in adj[u] where !visited[v] { dfs1(v) }
    order.append(u)
}

for u in 0..<n where !visited[u] { dfs1(u) }

// second pass on reverse graph
var comp = [Int](repeating: -1, count: n)
func dfs2(_ u: Int, _ c: Int) {
    comp[u] = c
    for v in radj[u] where comp[v] == -1 { dfs2(v, c) }
}

var count = 0
for u in order.reversed() where comp[u] == -1 {
    dfs2(u, count)
    count += 1
}

print(count)
