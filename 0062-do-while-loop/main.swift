var parts: [String] = []
var i = 1
repeat {
    parts.append(String(i))
    i += 1
} while i <= 3
print(parts.joined(separator: " "))
