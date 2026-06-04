func isBipartite(_ n: Int, _ edges: [(Int, Int)]) -> Bool {
    var adj = [[Int]](repeating: [], count: n)
    for (u, v) in edges {
        adj[u].append(v)
        adj[v].append(u)
    }
    var color = [Int](repeating: -1, count: n)
    for start in 0..<n where color[start] == -1 {
        color[start] = 0
        var queue = [start]
        var i = 0
        while i < queue.count {
            let u = queue[i]; i += 1
            for v in adj[u] {
                if color[v] == -1 {
                    color[v] = 1 - color[u]
                    queue.append(v)
                } else if color[v] == color[u] {
                    return false
                }
            }
        }
    }
    return true
}

let cycle4 = isBipartite(4, [(0, 1), (1, 2), (2, 3), (3, 0)])
let triangle = isBipartite(3, [(0, 1), (1, 2), (2, 0)])

print("\(cycle4 ? "yes" : "no") \(triangle ? "yes" : "no")")
