let nums = [10, 20, 30, 40, 50]
let slice = nums[1..<4]
print("slice:", slice.map(String.init).joined(separator: " "))
