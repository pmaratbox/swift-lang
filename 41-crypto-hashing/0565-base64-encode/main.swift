import Foundation

let encoded = Data("hello".utf8).base64EncodedString()
print(encoded)
