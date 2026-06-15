import ArgumentParser

struct Add: ParsableCommand {
    @Argument var a: Int
    @Argument var b: Int
    func run() { print(a + b) }
}

struct App: ParsableCommand {
    static let configuration = CommandConfiguration(subcommands: [Add.self])
}

App.main(["add", "2", "3"])
