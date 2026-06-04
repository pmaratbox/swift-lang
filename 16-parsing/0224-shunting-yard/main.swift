let input = "3 + 4 * 2"
let prec: [String: Int] = ["+": 1, "-": 1, "*": 2, "/": 2]
var output: [String] = []
var ops: [String] = []
for tok in input.split(separator: " ").map(String.init) {
    if let p = prec[tok] {
        while let top = ops.last, let tp = prec[top], tp >= p {
            output.append(ops.removeLast())
        }
        ops.append(tok)
    } else {
        output.append(tok)
    }
}
while let op = ops.popLast() { output.append(op) }
print(output.joined(separator: " "))
