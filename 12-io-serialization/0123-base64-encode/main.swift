import Foundation

let data = "hi".data(using: .utf8)!
print(data.base64EncodedString())
