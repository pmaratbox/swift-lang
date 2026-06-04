import Foundation

let bytes = Array("Hi".utf8)
print(bytes.map { String(format: "%02x", $0) }.joined(separator: " "))
