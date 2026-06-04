struct Edge { let to: Int; let w: Int }

func dijkstra(_ n: Int, _ adj: [[Edge]], _ src: Int) -> [Int] {
    var dist = [Int](repeating: Int.max, count: n)
    dist[src] = 0
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
        }
    }
    return dist
}

var adj = [[Edge]](repeating: [], count: 4)
adj[0].append(Edge(to: 1, w: 4))
adj[0].append(Edge(to: 2, w: 1))
adj[2].append(Edge(to: 1, w: 2))
adj[1].append(Edge(to: 3, w: 1))
adj[2].append(Edge(to: 3, w: 5))

let d = dijkstra(4, adj, 0)
print(d.map(String.init).joined(separator: " "))
