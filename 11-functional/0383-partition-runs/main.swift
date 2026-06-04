let input = [1, 1, 2, 3, 3, 3]

var runs: [[Int]] = []
for x in input {
    if var last = runs.last, last.first == x {
        last.append(x)
        runs[runs.count - 1] = last
    } else {
        runs.append([x])
    }
}

let result = runs.map { run in
    run.map(String.init).joined(separator: " ")
}.joined(separator: "|")

print(result)
