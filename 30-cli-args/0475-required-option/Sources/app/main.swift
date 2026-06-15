import ArgumentParser

struct App: ParsableCommand {
    @Option var id: Int
    func run() { print(id) }
}

App.main(["--id", "42"])
