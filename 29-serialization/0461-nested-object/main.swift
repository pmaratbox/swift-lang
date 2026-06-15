import Foundation

struct Address: Codable {
    let city: String
    let zip: Int
}

struct Person: Codable {
    let address: Address
    let name: String
}

let enc = JSONEncoder()
enc.outputFormatting = .sortedKeys
let person = Person(address: Address(city: "oslo", zip: 1000), name: "alice")
print(String(data: try enc.encode(person), encoding: .utf8)!)
