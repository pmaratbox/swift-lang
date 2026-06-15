import Foundation

struct Person: Codable { let age: Int; let name: String }

let json = "{\"age\":30,\"name\":\"alice\"}"
let person = try JSONDecoder().decode(Person.self, from: Data(json.utf8))
print("\(person.name) \(person.age)")
