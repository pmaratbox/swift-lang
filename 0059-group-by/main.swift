let words = ["one", "two", "three"]
let groups = Dictionary(grouping: words, by: { $0.count })

let out = groups.keys.sorted().map { k in "\(k):[\(groups[k]!.joined(separator: ","))]" }
print(out.joined(separator: " "))
