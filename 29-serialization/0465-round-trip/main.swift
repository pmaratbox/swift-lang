import Foundation

struct Person: Codable { let age: Int; let name: String }

let enc = JSONEncoder()
enc.outputFormatting = .sortedKeys
let data = try enc.encode(Person(age: 30, name: "alice"))
let person = try JSONDecoder().decode(Person.self, from: data)
print(person.name)
