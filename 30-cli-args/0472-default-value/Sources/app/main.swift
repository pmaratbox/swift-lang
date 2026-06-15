import ArgumentParser

struct App: ParsableCommand {
    @Option var count: Int = 1
    func run() { print(count) }
}

App.main([])
