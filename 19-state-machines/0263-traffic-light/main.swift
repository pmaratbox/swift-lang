let next: [String: String] = ["red": "green", "green": "yellow", "yellow": "red"]
var state = "red"
var visited: [String] = []
for _ in 0..<4 {
    state = next[state]!
    visited.append(state)
}
print(visited.joined(separator: " "))
