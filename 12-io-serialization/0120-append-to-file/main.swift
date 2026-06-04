import Foundation

let path = "data.txt"
try "a\n".write(toFile: path, atomically: true, encoding: .utf8)

let handle = FileHandle(forWritingAtPath: path)!
handle.seekToEndOfFile()
handle.write("b\n".data(using: .utf8)!)
handle.closeFile()

let read = try String(contentsOfFile: path, encoding: .utf8)
let lines = read.split(separator: "\n", omittingEmptySubsequences: true)

try FileManager.default.removeItem(atPath: path)

print(lines.joined(separator: " "))
