let width = 10
let progress = 0.4

let filled = Int((Double(width) * progress).rounded())
let bar = String(repeating: "#", count: filled)
    + String(repeating: "-", count: width - filled)

print("[\(bar)]")
