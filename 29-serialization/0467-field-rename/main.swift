import Foundation

struct User: Codable {
    let fullName: String

    enum CodingKeys: String, CodingKey {
        case fullName = "full_name"
    }
}

let enc = JSONEncoder()
enc.outputFormatting = .sortedKeys
print(String(data: try enc.encode(User(fullName: "alice")), encoding: .utf8)!)
