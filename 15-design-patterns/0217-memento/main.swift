struct Memento {
    let state: Int
}

final class Originator {
    var state: Int
    init(state: Int) { self.state = state }
    func save() -> Memento { Memento(state: state) }
    func restore(_ memento: Memento) { state = memento.state }
}

let originator = Originator(state: 1)
let saved = originator.save()
originator.state = 2
let current = originator.state
originator.restore(saved)
print("\(current) \(originator.state)")
