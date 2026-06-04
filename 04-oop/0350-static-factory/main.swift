struct Color {
    let r: Int
    let g: Int
    let b: Int

    static func fromHex(_ hex: String) -> Color {
        var s = Substring(hex)
        if s.hasPrefix("#") { s = s.dropFirst() }
        let digits = Array(s)
        func pair(_ i: Int) -> Int {
            Int(String(digits[i...i + 1]), radix: 16) ?? 0
        }
        return Color(r: pair(0), g: pair(2), b: pair(4))
    }
}

let c = Color.fromHex("#ff0000")
print("\(c.r) \(c.g) \(c.b)")
