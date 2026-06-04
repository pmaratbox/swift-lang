protocol Logger {
    func log(_ message: String)
}

struct NullLogger: Logger {
    func log(_ message: String) {}
}

final class RealLogger: Logger {
    private(set) var count = 0
    func log(_ message: String) { count += 1 }
}

let nullLogger: Logger = NullLogger()
let realLogger = RealLogger()

nullLogger.log("ignored")
realLogger.log("recorded")

print(realLogger.count)
