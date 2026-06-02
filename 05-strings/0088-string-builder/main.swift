let nums = [1, 2, 3]
var sb = ""
for (i, n) in nums.enumerated() {
    if i > 0 { sb += "-" }
    sb += String(n)
}
print(sb)
