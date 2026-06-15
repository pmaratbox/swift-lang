import Foundation

// Parse a FIXED ISO date string and format it back to ISO (yyyy-MM-dd).
// ISO8601DateFormatter with .withFullDate handles both directions, pinned
// to UTC so the round-trip never depends on the local OS timezone.
let f = ISO8601DateFormatter()
f.formatOptions = [.withFullDate]
f.timeZone = TimeZone(identifier: "UTC")

let parsed = f.date(from: "2026-06-15")!
print(f.string(from: parsed))
