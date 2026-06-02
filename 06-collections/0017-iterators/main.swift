let nums = [1, 2, 3, 4, 5]

let sum = nums
    .filter { $0 % 2 == 0 }
    .map { $0 * 2 }
    .reduce(0, +)

print("sum: \(sum)")
