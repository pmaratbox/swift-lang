let nums = [1, 2, 3, 4]
let size = 2
for i in 0...(nums.count - size) {
    let window = nums[i..<i + size]
    print(window.map { String($0) }.joined(separator: " "))
}
