import Combine

var out: [Int] = []
let c = [1, 2, 3, 4].publisher
  .map { $0 * 2 }
  .sink(receiveCompletion: { _ in }, receiveValue: { out.append($0) })
_ = c
print(out.map(String.init).joined(separator: "\n"))
