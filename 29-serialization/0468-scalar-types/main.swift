import Foundation

struct Record: Codable {
    let active: Bool
    let count: Int
    let label: String
}

let enc = JSONEncoder()
enc.outputFormatting = .sortedKeys

let value = Record(active: true, count: 5, label: "x")
let data = try enc.encode(value)
print(String(data: data, encoding: .utf8)!)
