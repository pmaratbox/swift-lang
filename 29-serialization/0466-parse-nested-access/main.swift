import Foundation

struct User: Codable { let name: String; let roles: [String] }
struct Payload: Codable { let user: User }

let json = "{\"user\":{\"name\":\"alice\",\"roles\":[\"admin\",\"user\"]}}"
let data = json.data(using: .utf8)!
let payload = try JSONDecoder().decode(Payload.self, from: data)
print("\(payload.user.name) \(payload.user.roles[0])")
