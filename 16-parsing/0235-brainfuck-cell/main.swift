let program = "+++"
var cell = 0
for op in program {
    switch op {
    case "+": cell += 1
    case "-": cell -= 1
    default: break
    }
}
print(cell)
