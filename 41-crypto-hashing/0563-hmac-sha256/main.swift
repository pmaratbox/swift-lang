import CryptoKit
import Foundation

let key = SymmetricKey(data: Data("key".utf8))
let mac = HMAC<SHA256>.authenticationCode(for: Data("hello".utf8), using: key)
print(mac.map { String(format: "%02x", $0) }.joined())
