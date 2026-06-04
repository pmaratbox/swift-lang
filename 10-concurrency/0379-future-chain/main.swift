import Foundation

func step(_ value: Int, _ transform: @escaping (Int) -> Int) -> Int {
    let group = DispatchGroup()
    var result = 0
    group.enter()
    DispatchQueue.global().async {
        result = transform(value)
        group.leave()
    }
    group.wait()
    return result
}

let a = step(5) { $0 * 2 }
let b = step(a) { $0 + 1 }
print(b)
