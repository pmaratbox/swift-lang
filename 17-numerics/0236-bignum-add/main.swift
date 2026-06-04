func addStrings(_ a: String, _ b: String) -> String {
    var i = Array(a).reversed().makeIterator()
    var j = Array(b).reversed().makeIterator()
    var x: Character? = i.next()
    var y: Character? = j.next()
    var carry = 0
    var digits: [Character] = []
    while x != nil || y != nil || carry > 0 {
        let dx = x.map { Int(String($0))! } ?? 0
        let dy = y.map { Int(String($0))! } ?? 0
        let sum = dx + dy + carry
        digits.append(Character(String(sum % 10)))
        carry = sum / 10
        x = i.next()
        y = j.next()
    }
    return String(digits.reversed())
}

print(addStrings("999999999999", "1"))
