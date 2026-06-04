func balanced(_ s: String) -> Bool {
    let pairs: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    var stack: [Character] = []
    for ch in s {
        if ch == "(" || ch == "[" || ch == "{" {
            stack.append(ch)
        } else if let open = pairs[ch] {
            if stack.popLast() != open { return false }
        }
    }
    return stack.isEmpty
}

let a = balanced("([{}])") ? "yes" : "no"
let b = balanced("([)]") ? "yes" : "no"
print("\(a) \(b)")
