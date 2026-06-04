let houses = [2, 7, 9, 3, 1]
var rob = 0, skip = 0
for value in houses {
    (rob, skip) = (skip + value, max(rob, skip))
}
print(max(rob, skip))
