import Foundation

let value = ProcessInfo.processInfo.environment["LESSON_ENV_VAR"] ?? "default"
print("value: \(value)")
