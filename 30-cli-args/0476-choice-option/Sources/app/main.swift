import ArgumentParser

enum Color: String, ExpressibleByArgument, CaseIterable {
    case red, green, blue
}

struct App: ParsableCommand {
    @Option var color: Color
    func run() { print(color.rawValue) }
}

App.main(["--color", "green"])
