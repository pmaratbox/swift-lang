class Calc {
    var value: Int
    init(_ value: Int) {
        self.value = value
    }
    func add(_ n: Int) -> Calc {
        value += n
        return self
    }
    func multiply(_ n: Int) -> Calc {
        value *= n
        return self
    }
}

let c = Calc(5).add(3).multiply(2)
print(c.value)
