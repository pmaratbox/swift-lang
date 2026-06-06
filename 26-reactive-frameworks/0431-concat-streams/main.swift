import Combine

var out: [Int] = []
let first = [1, 2].publisher
let second = [3, 4].publisher
let c = Publishers.Concatenate(prefix: first, suffix: second)
    .sink(receiveCompletion: { _ in }, receiveValue: { out.append($0) })
_ = c
print(out.map(String.init).joined(separator: "\n"))
