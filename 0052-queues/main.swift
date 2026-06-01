var queue = [1, 2, 3]

var out: [String] = []
while !queue.isEmpty {
    out.append(String(queue.removeFirst()))
}
print(out.joined(separator: " "))
