let nums = [1, 2, 3, 4]
var total = 0
let sums = nums.map { n -> Int in
    total += n
    return total
}
print(sums.map { String($0) }.joined(separator: " "))
