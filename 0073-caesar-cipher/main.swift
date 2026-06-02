let text = "abc"
let shift = 1
let base = Int(Character("a").asciiValue!)
let result = String(text.map { ch -> Character in
    let code = Int(ch.asciiValue!)
    return Character(UnicodeScalar((code - base + shift) % 26 + base)!)
})
print(result)
