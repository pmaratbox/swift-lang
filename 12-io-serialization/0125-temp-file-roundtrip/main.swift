import Foundation

let dir = FileManager.default.temporaryDirectory
let url = dir.appendingPathComponent("roundtrip.txt")

let original = "ok-data"
try original.write(to: url, atomically: true, encoding: .utf8)
let read = try String(contentsOf: url, encoding: .utf8)
try FileManager.default.removeItem(at: url)

print("roundtrip: \(read == original ? "ok" : "fail")")
