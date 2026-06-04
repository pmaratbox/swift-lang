let n = 4
let edges = [(0, 1), (0, 2), (1, 3), (2, 3)]

var adj = [[Int]](repeating: [], count: n)
var indeg = [Int](repeating: 0, count: n)
for (u, v) in edges {
    adj[u].append(v)
    indeg[v] += 1
}

var order: [Int] = []
var ready = (0..<n).filter { indeg[$0] == 0 }
while !ready.isEmpty {
    ready.sort()
    let u = ready.removeFirst()
    order.append(u)
    for v in adj[u] {
        indeg[v] -= 1
        if indeg[v] == 0 { ready.append(v) }
    }
}

print(order.map(String.init).joined(separator: " "))
