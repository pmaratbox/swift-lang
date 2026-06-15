import CryptoKit
import Foundation

var hasher = SHA256()
hasher.update(data: Data("foo".utf8))
hasher.update(data: Data("bar".utf8))
let digest = hasher.finalize()
print(digest.map { String(format: "%02x", $0) }.joined())
