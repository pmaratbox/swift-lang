import Foundation

let path = "greeting.txt"
try "hello, file".write(toFile: path, atomically: true, encoding: .utf8)
let content = try String(contentsOfFile: path, encoding: .utf8)
try FileManager.default.removeItem(atPath: path)
print("read: \(content)")
