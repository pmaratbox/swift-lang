let next: [String: String] = ["A": "B", "B": "C", "C": "A"]
var state = "A"
var visited: [String] = []
for _ in 0..<3 {
    state = next[state]!
    visited.append(state)
}
print(visited.joined(separator: " "))
