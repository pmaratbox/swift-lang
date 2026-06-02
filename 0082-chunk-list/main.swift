let nums = [1, 2, 3, 4, 5, 6, 7]
let size = 3
for i in stride(from: 0, to: nums.count, by: size) {
    let chunk = nums[i..<min(i + size, nums.count)]
    print(chunk.map { String($0) }.joined(separator: " "))
}
