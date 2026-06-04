func snakeToCamel(_ s: String) -> String {
    let words = s.split(separator: "_").map(String.init)
    guard let first = words.first else { return "" }
    return first + words.dropFirst().map { word -> String in
        guard let head = word.first else { return word }
        return head.uppercased() + word.dropFirst()
    }.joined()
}

print(snakeToCamel("hello_world"))
