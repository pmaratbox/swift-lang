let values: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
let roman = Array("XIV")
var total = 0
for (i, ch) in roman.enumerated() {
    let v = values[ch]!
    if i + 1 < roman.count, values[roman[i + 1]]! > v {
        total -= v
    } else {
        total += v
    }
}
print(total)
