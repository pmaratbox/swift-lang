import Combine
import Foundation

// Unbounded source of naturals 1, 2, 3, ... as a Combine publisher.
let naturals = sequence(first: 1) { $0 + 1 }.publisher

var out: [String] = []
let c = naturals
    .prefix(3) // take(3)
    .sink(receiveCompletion: { completion in
        if case .finished = completion { out.append("completed") }
    }, receiveValue: { value in
        out.append(String(value))
    })
_ = c

print(out.joined(separator: "\n"))
