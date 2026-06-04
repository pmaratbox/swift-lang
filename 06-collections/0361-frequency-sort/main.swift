let nums = [1, 1, 2, 3, 3, 3]

var counts: [Int: Int] = [:]
var order: [Int] = []
for n in nums {
    if counts[n] == nil { order.append(n) }
    counts[n, default: 0] += 1
}

// Stable sort by descending count, ties keep first-seen order.
let sortedKeys = order.enumerated().sorted { lhs, rhs in
    let cl = counts[lhs.element]!
    let cr = counts[rhs.element]!
    if cl != cr { return cl > cr }
    return lhs.offset < rhs.offset
}.map { $0.element }

var result: [Int] = []
for key in sortedKeys {
    result.append(contentsOf: Array(repeating: key, count: counts[key]!))
}
print(result.map(String.init).joined(separator: " "))
