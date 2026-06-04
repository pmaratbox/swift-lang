func expand(_ spec: String) -> String {
    let chars = Array(spec)
    guard chars.count == 3, chars[1] == "-",
          let start = chars[0].asciiValue, let end = chars[2].asciiValue else {
        return ""
    }
    return String((start...end).map { Character(Unicode.Scalar($0)) })
}

print(expand("a-e"))
