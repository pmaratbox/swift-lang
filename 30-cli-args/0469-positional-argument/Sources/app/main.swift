import ArgumentParser

struct App: ParsableCommand {
    @Argument var name: String
    func run() { print(name) }
}

App.main(["alice"])
