import Foundation

// Parse a FIXED UTC instant (never the current time).
let f = ISO8601DateFormatter()
f.formatOptions = [.withInternetDateTime]
f.timeZone = TimeZone(identifier: "UTC")
let instant = f.date(from: "2026-06-15T12:00:00Z")!

// Convert to a FIXED +05:00 offset zone (no named tz / OS tzdata).
var cal = Calendar(identifier: .gregorian)
cal.timeZone = TimeZone(secondsFromGMT: 5 * 3600)!

let hour = cal.component(.hour, from: instant)
print(hour)
