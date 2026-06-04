let json = "{\"x\":1,\"y\":2}"
let inner = json.dropFirst().dropLast()
let pairs = inner.split(separator: ",").map { pair -> String in
    let kv = pair.split(separator: ":")
    let key = kv[0].filter { $0 != "\"" }
    let value = kv[1]
    return "\(key)=\(value)"
}
print(pairs.joined(separator: " "))
