func isBalanced(_ s: String) -> Bool {
    var stack: [Character] = []
    for ch in s {
        if ch == "(" {
            stack.append(ch)
        } else if ch == ")" {
            if stack.isEmpty { return false }
            stack.removeLast()
        }
    }
    return stack.isEmpty
}

for s in ["(())", "(()"] {
    print(isBalanced(s) ? "yes" : "no")
}
