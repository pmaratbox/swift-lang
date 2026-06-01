let result = "a,b,c".split(separator: ",").map { $0.uppercased() }.joined(separator: "-")
print(result)
