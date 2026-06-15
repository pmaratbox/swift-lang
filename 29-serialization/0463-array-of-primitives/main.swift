import Foundation

let numbers: [Int] = [1, 2, 3]

let enc = JSONEncoder()
enc.outputFormatting = .sortedKeys

let data = try enc.encode(numbers)
print(String(data: data, encoding: .utf8)!)
