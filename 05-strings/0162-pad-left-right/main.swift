let value = "5"
let width = 3
let left = String(repeating: " ", count: width - value.count) + value
let right = value + String(repeating: " ", count: width - value.count)
print(left + "|" + right)
