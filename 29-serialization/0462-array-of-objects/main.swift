import Foundation

struct Person: Codable {
    let age: Int
    let name: String
}

let people = [
    Person(age: 30, name: "alice"),
    Person(age: 25, name: "bob"),
]

let enc = JSONEncoder()
enc.outputFormatting = .sortedKeys
let data = try enc.encode(people)
print(String(data: data, encoding: .utf8)!)
