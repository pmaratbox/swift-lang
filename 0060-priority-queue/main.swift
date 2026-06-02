var pq: [Int] = []
func push(_ n: Int) {
    var i = 0
    while i < pq.count && pq[i] <= n { i += 1 }
    pq.insert(n, at: i)
}

for n in [3, 1, 2] {
    push(n)
}

var out: [String] = []
while !pq.isEmpty {
    out.append(String(pq.removeFirst()))
}
print(out.joined(separator: " "))
