import Foundation

// Parse two fixed ISO dates (never the current time).
let f = ISO8601DateFormatter()
f.formatOptions = [.withFullDate]
f.timeZone = TimeZone(identifier: "UTC")!

let start = f.date(from: "2026-06-15")!
let end = f.date(from: "2026-07-15")!

// Day difference computed by the calendar in UTC.
var cal = Calendar(identifier: .gregorian)
cal.timeZone = TimeZone(identifier: "UTC")!

let diff = cal.dateComponents([.day], from: start, to: end).day!
print(diff)
