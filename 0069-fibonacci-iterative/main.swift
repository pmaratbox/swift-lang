var a = 0
var b = 1
var nums: [String] = []
for _ in 0..<7 {
    nums.append(String(a))
    (a, b) = (b, a + b)
}
print(nums.joined(separator: " "))
