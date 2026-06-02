let nums = [1, 2, 3, 4, 5]
let k = 2
let rotated = Array(nums[k...]) + Array(nums[..<k])
print(rotated.map { String($0) }.joined(separator: " "))
