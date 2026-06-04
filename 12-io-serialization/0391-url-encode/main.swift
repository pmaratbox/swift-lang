import Foundation

let input = "a b&c"
let unreserved = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~")
let encoded = input.unicodeScalars.map { scalar -> String in
    let ch = Character(scalar)
    if unreserved.contains(ch) {
        return String(ch)
    }
    return String(format: "%%%02X", scalar.value)
}.joined()
print(encoded)
