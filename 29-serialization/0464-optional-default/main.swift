import Foundation

struct Person: Codable {
    let age: Int
    let name: String

    enum CodingKeys: String, CodingKey {
        case age
        case name
    }

    init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        name = try c.decode(String.self, forKey: .name)
        age = try c.decodeIfPresent(Int.self, forKey: .age) ?? 0
    }
}

let json = "{\"name\":\"alice\"}".data(using: .utf8)!
let p = try JSONDecoder().decode(Person.self, from: json)
print("\(p.name) \(p.age)")
