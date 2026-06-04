let n = 5
var prev = 1, curr = 1
for _ in 1..<n {
    (prev, curr) = (curr, prev + curr)
}
print(curr)
