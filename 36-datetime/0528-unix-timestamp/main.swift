import Foundation

// Parse a FIXED UTC instant (never the current time) from an ISO-8601 string.
let parser = ISO8601DateFormatter()
parser.formatOptions = [.withInternetDateTime] // YYYY-MM-DDTHH:MM:SSZ
parser.timeZone = TimeZone(identifier: "UTC")
let instant = parser.date(from: "2026-06-15T00:00:00Z")!

// Unix timestamp = whole seconds since the 1970-01-01T00:00:00Z epoch,
// computed by Foundation (Date.timeIntervalSince1970), not hardcoded.
let epochSeconds = Int(instant.timeIntervalSince1970)
print(epochSeconds)
