import Combine

var out: [Int] = []
let c = [1, 2, 3, 4, 5, 6].publisher
    .filter { $0 % 2 == 0 }
    .sink(receiveCompletion: { _ in }, receiveValue: { out.append($0) })
_ = c
print(out.map(String.init).joined(separator: "\n"))
