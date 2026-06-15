import Foundation

struct Person: Codable {
    let age: Int
    let name: String
}

let enc = JSONEncoder()
enc.outputFormatting = .sortedKeys
let person = Person(age: 30, name: "alice")
let data = try enc.encode(person)
print(String(data: data, encoding: .utf8)!)
