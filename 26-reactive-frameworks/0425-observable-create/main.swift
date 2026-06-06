import Combine

let c = [1, 2, 3].publisher.sink(
  receiveCompletion: { completion in
    if case .finished = completion { print("done") }
  },
  receiveValue: { value in print(value) }
)
_ = c
