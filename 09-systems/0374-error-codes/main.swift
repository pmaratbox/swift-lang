let messages: [Int: String] = [
    1: "permission denied",
    2: "not found",
    3: "timeout",
]

print(messages[2] ?? "unknown")
