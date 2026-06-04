let a = [2, 2, 1, 2, 3, 2]
var candidate = a[0]
var count = 0
for x in a {
    if count == 0 { candidate = x }
    count += (x == candidate) ? 1 : -1
}
print(candidate)
