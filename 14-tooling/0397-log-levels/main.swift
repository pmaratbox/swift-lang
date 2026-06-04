enum Level: Int {
    case info, warn, error

    var name: String {
        switch self {
        case .info: return "INFO"
        case .warn: return "WARN"
        case .error: return "ERROR"
        }
    }
}

let threshold = Level.warn

func log(_ level: Level, _ message: String) {
    guard level.rawValue >= threshold.rawValue else { return }
    print("\(level.name): \(message)")
}

log(.info, "i")
log(.warn, "w")
log(.error, "e")
