let nums = [2, 7, 11, 15]
let target = 9
var seen: [Int: Int] = [:]
for (i, n) in nums.enumerated() {
    if let j = seen[target - n] {
        print("\(j) \(i)")
        break
    }
    seen[n] = i
}
