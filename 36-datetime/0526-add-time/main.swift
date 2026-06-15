import Foundation

// Fixed instant: 2026-06-15T10:00 in UTC (never the current time).
var calendar = Calendar(identifier: .gregorian)
calendar.timeZone = TimeZone(identifier: "UTC")!

var start = DateComponents()
start.year = 2026
start.month = 6
start.day = 15
start.hour = 10
start.minute = 0
let startDate = calendar.date(from: start)!

// Add 90 minutes via the library.
let result = calendar.date(byAdding: .minute, value: 90, to: startDate)!

// Format as HH:mm using fixed UTC components.
let parts = calendar.dateComponents([.hour, .minute], from: result)
print(String(format: "%02d:%02d", parts.hour!, parts.minute!))
