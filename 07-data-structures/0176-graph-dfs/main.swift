let adj: [[Int]] = [
    [1, 2],
    [0, 3],
    [0, 3],
    [1, 2],
]

var visited = Set<Int>()
var order: [Int] = []

func dfs(_ node: Int) {
    visited.insert(node)
    order.append(node)
    for neighbor in adj[node] where !visited.contains(neighbor) {
        dfs(neighbor)
    }
}

dfs(0)
print(order.map(String.init).joined(separator: " "))
