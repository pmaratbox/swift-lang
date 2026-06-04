let input = [1, 2, 3, 4]

var acc = 1
let scanned = input.map { x -> Int in
    acc *= x
    return acc
}

print(scanned.map(String.init).joined(separator: " "))
