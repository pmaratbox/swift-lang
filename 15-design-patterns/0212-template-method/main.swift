class Algorithm {
    func step() -> String { "" }
    func run() -> String {
        ["start", step(), "end"].joined(separator: " ")
    }
}

final class WorkAlgorithm: Algorithm {
    override func step() -> String { "work" }
}

print(WorkAlgorithm().run())
