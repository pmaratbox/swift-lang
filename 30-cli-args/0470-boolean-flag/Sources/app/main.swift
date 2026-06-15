import ArgumentParser
struct App: ParsableCommand {
    @Flag var verbose: Bool = false
    func run() { print(verbose) }
}
App.main(["--verbose"])
