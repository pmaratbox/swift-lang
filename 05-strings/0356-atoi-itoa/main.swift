func atoi(_ s: String) -> Int {
    let chars = Array(s)
    var idx = 0
    var sign = 1
    if idx < chars.count, chars[idx] == "-" { sign = -1; idx += 1 }
    else if idx < chars.count, chars[idx] == "+" { idx += 1 }
    var value = 0
    while idx < chars.count, let d = chars[idx].wholeNumberValue {
        value = value * 10 + d
        idx += 1
    }
    return sign * value
}

func itoa(_ n: Int) -> String {
    if n == 0 { return "0" }
    var value = abs(n)
    var digits: [Character] = []
    while value > 0 {
        digits.append(Character(String(value % 10)))
        value /= 10
    }
    if n < 0 { digits.append("-") }
    return String(digits.reversed())
}

let parsed = atoi("-42")
print("\(parsed) \(itoa(parsed))")
