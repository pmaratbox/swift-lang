struct UserId {
    let value: Int
    var label: String { "user-\(value)" }
}

struct ProductId {
    let value: Int
    var label: String { "prod-\(value)" }
}

let u = UserId(value: 1)
let p = ProductId(value: 2)

print("\(u.label) \(p.label)")
