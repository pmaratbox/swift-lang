import CryptoKit
import Foundation

let digest = Insecure.MD5.hash(data: Data("hello".utf8))
print(digest.map { String(format: "%02x", $0) }.joined())
