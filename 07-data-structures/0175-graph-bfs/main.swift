let adj: [[Int]] = [
    [1, 2],
    [0, 3],
    [0, 3],
    [1, 2],
]

var visited = Set<Int>()
var queue = [0]
visited.insert(0)
var order: [Int] = []

while !queue.isEmpty {
    let node = queue.removeFirst()
    order.append(node)
    for neighbor in adj[node] where !visited.contains(neighbor) {
        visited.insert(neighbor)
        queue.append(neighbor)
    }
}

print(order.map(String.init).joined(separator: " "))
