let n = 3
let edges = [(0, 1), (1, 2), (2, 0)]

var adj = [[Int]](repeating: [], count: n)
for (u, v) in edges { adj[u].append(v) }

// 0 = white, 1 = gray, 2 = black
var color = [Int](repeating: 0, count: n)

func dfs(_ u: Int) -> Bool {
    color[u] = 1
    for v in adj[u] {
        if color[v] == 1 { return true }
        if color[v] == 0 && dfs(v) { return true }
    }
    color[u] = 2
    return false
}

var hasCycle = false
for u in 0..<n where color[u] == 0 {
    if dfs(u) { hasCycle = true; break }
}

print(hasCycle ? "cycle" : "acyclic")
