let numbers = [1, 2]
let letters = ["a", "b"]
var pairs: [String] = []
for n in numbers {
    for l in letters {
        pairs.append("\(n)\(l)")
    }
}
print(pairs.joined(separator: " "))
