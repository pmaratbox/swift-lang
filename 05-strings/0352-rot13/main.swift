func rot13(_ s: String) -> String {
    String(s.unicodeScalars.map { scalar -> Character in
        let v = scalar.value
        switch v {
        case 97...122: return Character(Unicode.Scalar((v - 97 + 13) % 26 + 97)!)
        case 65...90: return Character(Unicode.Scalar((v - 65 + 13) % 26 + 65)!)
        default: return Character(scalar)
        }
    })
}

let encoded = rot13("hello")
let decoded = rot13(encoded)
print("\(encoded) \(decoded)")
