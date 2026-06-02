var stack: [Int] = []
for n in 1...3 {
    stack.append(n)
}

var popped: [Int] = []
while let top = stack.popLast() {
    popped.append(top)
}

print(popped.map(String.init).joined(separator: " "))
