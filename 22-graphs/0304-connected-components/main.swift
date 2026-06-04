let n = 5
let edges = [(0, 1), (1, 2), (3, 4)]

var adj = [[Int]](repeating: [], count: n)
for (u, v) in edges {
    adj[u].append(v)
    adj[v].append(u)
}

var visited = [Bool](repeating: false, count: n)

func bfs(_ start: Int) {
    var queue = [start]
    visited[start] = true
    var i = 0
    while i < queue.count {
        let u = queue[i]; i += 1
        for v in adj[u] where !visited[v] {
            visited[v] = true
            queue.append(v)
        }
    }
}

var count = 0
for s in 0..<n where !visited[s] {
    count += 1
    bfs(s)
}

print(count)
