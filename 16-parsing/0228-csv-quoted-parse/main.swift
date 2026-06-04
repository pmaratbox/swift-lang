let row = "a,\"b,c\",d"
var fields: [String] = []
var current = ""
var inQuotes = false
for ch in row {
    switch ch {
    case "\"": inQuotes.toggle()
    case "," where !inQuotes:
        fields.append(current)
        current = ""
    default: current.append(ch)
    }
}
fields.append(current)
print(fields.joined(separator: "|"))
