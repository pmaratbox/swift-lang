import Combine
import Foundation

var out: [Int] = []
let a = [1, 2, 3].publisher
let b = [10, 20, 30].publisher
let c = a.zip(b).map { $0 + $1 }.sink(
  receiveCompletion: { _ in },
  receiveValue: { out.append($0) }
)
_ = c
print(out.map(String.init).joined(separator: "\n"))
