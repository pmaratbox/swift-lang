let s = "Hi"
let bytes = Array(s.utf8)
print(bytes.map { String($0) }.joined(separator: " "))
