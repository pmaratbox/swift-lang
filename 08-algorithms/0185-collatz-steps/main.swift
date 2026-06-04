var n = 6
var steps = 0
while n != 1 {
    n = n % 2 == 0 ? n / 2 : 3 * n + 1
    steps += 1
}
print(steps)
