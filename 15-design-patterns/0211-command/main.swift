final class Counter {
    var value = 0
}

protocol Command {
    func execute()
    func undo()
}

struct AddCommand: Command {
    let counter: Counter
    let amount: Int
    func execute() { counter.value += amount }
    func undo() { counter.value -= amount }
}

let counter = Counter()
let command = AddCommand(counter: counter, amount: 5)
command.execute()
let afterExecute = counter.value
command.undo()
let afterUndo = counter.value
print("\(afterExecute) \(afterUndo)")
