let input = "3 4 + 5 *"
var stack: [Int] = []
for tok in input.split(separator: " ") {
    switch tok {
    case "+": let b = stack.removeLast(); let a = stack.removeLast(); stack.append(a + b)
    case "-": let b = stack.removeLast(); let a = stack.removeLast(); stack.append(a - b)
    case "*": let b = stack.removeLast(); let a = stack.removeLast(); stack.append(a * b)
    case "/": let b = stack.removeLast(); let a = stack.removeLast(); stack.append(a / b)
    default: stack.append(Int(tok)!)
    }
}
print(stack.last!)
