import Foundation

let f = ISO8601DateFormatter()
f.formatOptions = [.withFullDate]
f.timeZone = TimeZone(identifier: "UTC")

var cal = Calendar(identifier: .gregorian)
cal.timeZone = TimeZone(identifier: "UTC")!

let start = f.date(from: "2026-06-15")!
let result = cal.date(byAdding: DateComponents(day: 10), to: start)!
print(f.string(from: result))
