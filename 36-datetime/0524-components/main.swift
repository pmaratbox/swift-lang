import Foundation

// Parse a FIXED ISO date (never the current time).
let parser = ISO8601DateFormatter()
parser.formatOptions = [.withFullDate]
parser.timeZone = TimeZone(identifier: "UTC")
let date = parser.date(from: "2026-06-15")!

// Extract components via Foundation's Calendar accessors (UTC, no OS tzdata).
var calendar = Calendar(identifier: .gregorian)
calendar.timeZone = TimeZone(identifier: "UTC")!
let comps = calendar.dateComponents([.year, .month, .day], from: date)

print(comps.year!)
print(comps.month!)
print(comps.day!)
