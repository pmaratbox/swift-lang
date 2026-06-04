func transition(_ state: String, _ event: String) -> String {
    switch (state, event) {
    case ("locked", "coin"): return "unlocked"
    case ("unlocked", "push"): return "locked"
    case ("locked", "push"): return "locked"
    default: return state
    }
}

var state = "locked"
var visited: [String] = []
for event in ["coin", "push", "push"] {
    state = transition(state, event)
    visited.append(state)
}
print(visited.joined(separator: " "))
