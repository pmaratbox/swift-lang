import Combine
import Foundation

var out: [Int] = []
let c = [1, 2, 3, 4].publisher
  .scan(0) { $0 + $1 }
  .sink(receiveCompletion: { _ in }, receiveValue: { out.append($0) })
_ = c
print(out.map(String.init).joined(separator: "\n"))
