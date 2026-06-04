struct Edge { let to: Int; let w: Int }

let n = 4
var adj = [[Edge]](repeating: [], count: n)
adj[0].append(Edge(to: 1, w: 4))
adj[0].append(Edge(to: 2, w: 1))
adj[2].append(Edge(to: 1, w: 2))
adj[1].append(Edge(to: 3, w: 1))
adj[2].append(Edge(to: 3, w: 5))

var dist = [Int](repeating: Int.max, count: n)
var prev = [Int](repeating: -1, count: n)
dist[0] = 0
var visited = [Bool](repeating: false, count: n)

for _ in 0..<n {
    var u = -1
    for v in 0..<n where !visited[v] && dist[v] != Int.max {
        if u == -1 || dist[v] < dist[u] { u = v }
    }
    if u == -1 { break }
    visited[u] = true
    for e in adj[u] where dist[u] + e.w < dist[e.to] {
        dist[e.to] = dist[u] + e.w
        prev[e.to] = u
    }
}

var path: [Int] = []
var cur = 3
while cur != -1 {
    path.append(cur)
    cur = prev[cur]
}
path.reverse()

print(path.map(String.init).joined(separator: " "))
