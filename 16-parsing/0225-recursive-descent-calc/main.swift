struct Parser {
    let chars: [Character]
    var pos = 0
    init(_ s: String) { chars = Array(s) }

    mutating func peek() -> Character? { pos < chars.count ? chars[pos] : nil }

    mutating func factor() -> Int {
        var n = 0
        while let c = peek(), c.isNumber {
            n = n * 10 + Int(String(c))!
            pos += 1
        }
        return n
    }

    mutating func term() -> Int {
        var v = factor()
        while peek() == "*" {
            pos += 1
            v *= factor()
        }
        return v
    }

    mutating func expr() -> Int {
        var v = term()
        while peek() == "+" {
            pos += 1
            v += term()
        }
        return v
    }
}

var p = Parser("2+3*4")
print(p.expr())
