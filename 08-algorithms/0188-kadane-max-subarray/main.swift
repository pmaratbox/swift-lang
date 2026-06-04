let a = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
var cur = a[0]
var best = a[0]
for x in a.dropFirst() {
    cur = max(x, cur + x)
    best = max(best, cur)
}
print(best)
