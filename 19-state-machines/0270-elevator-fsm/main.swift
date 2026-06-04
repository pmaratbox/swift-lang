var floor = 0
var visited = [floor]
for target in [2, 0] {
    while floor != target {
        floor += floor < target ? 1 : -1
        visited.append(floor)
    }
}
print(visited.map(String.init).joined(separator: " "))
