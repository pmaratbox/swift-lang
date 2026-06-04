struct Edge { let from: Int; let to: Int; let w: Int }

let n = 3
let edges = [Edge(from: 0, to: 1, w: 1), Edge(from: 1, to: 2, w: -2), Edge(from: 0, to: 2, w: 4)]

var dist = [Int](repeating: Int.max, count: n)
dist[0] = 0
for _ in 0..<(n - 1) {
    for e in edges where dist[e.from] != Int.max && dist[e.from] + e.w < dist[e.to] {
        dist[e.to] = dist[e.from] + e.w
    }
}

print(dist.map(String.init).joined(separator: " "))
