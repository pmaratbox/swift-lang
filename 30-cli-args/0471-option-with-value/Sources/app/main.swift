import ArgumentParser

struct App: ParsableCommand {
    @Option var name: String
    func run() { print(name) }
}

App.main(["--name", "alice"])
