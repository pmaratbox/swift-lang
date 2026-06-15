import ArgumentParser

struct App: ParsableCommand {
    @Option(name: .long) var num: [Int] = []
    func run() {
        print(num.reduce(0, +))
    }
}

App.main(["--num", "1", "--num", "2", "--num", "3"])
