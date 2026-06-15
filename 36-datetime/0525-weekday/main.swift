import Foundation

let f = ISO8601DateFormatter()
f.formatOptions = [.withFullDate]
f.timeZone = TimeZone(identifier: "UTC")

var cal = Calendar(identifier: .gregorian)
cal.timeZone = TimeZone(identifier: "UTC")!

let date = f.date(from: "2026-06-15")!

// Calendar .weekday is Sunday-based (1=Sun .. 7=Sat); convert to ISO (Mon=1 .. Sun=7).
let wd = cal.component(.weekday, from: date)
let isoWd = (wd + 5) % 7 + 1
print(isoWd)
