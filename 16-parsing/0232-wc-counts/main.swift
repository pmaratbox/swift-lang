let text = "a b\nc"
let words = text.split(whereSeparator: { $0 == " " || $0 == "\n" }).count
let lines = text.split(separator: "\n", omittingEmptySubsequences: false).count
let chars = text.count
print("\(words) \(lines) \(chars)")
