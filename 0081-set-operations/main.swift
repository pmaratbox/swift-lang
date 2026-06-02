let a: Set = [1, 2, 3]
let b: Set = [2, 3, 4]
print(a.union(b).sorted().map { String($0) }.joined(separator: " "))
print(a.intersection(b).sorted().map { String($0) }.joined(separator: " "))
