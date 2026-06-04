import Foundation

let path = "lines.txt"
let content = "one\ntwo\nthree\n"
try content.write(toFile: path, atomically: true, encoding: .utf8)

let read = try String(contentsOfFile: path, encoding: .utf8)
let count = read.split(separator: "\n", omittingEmptySubsequences: true).count

try FileManager.default.removeItem(atPath: path)

print("lines: \(count)")
