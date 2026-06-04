let parsed = Int("42") ?? 0
let fallback = Int("x") ?? 0

print("\(parsed) \(fallback)")
