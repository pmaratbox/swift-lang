import Foundation

let text = "[s]\nk=v"
var section = ""
var output: [String] = []
for raw in text.split(separator: "\n") {
    let line = raw.trimmingCharacters(in: .whitespaces)
    if line.hasPrefix("[") && line.hasSuffix("]") {
        section = String(line.dropFirst().dropLast())
    } else if let eq = line.firstIndex(of: "=") {
        let key = line[..<eq]
        let value = line[line.index(after: eq)...]
        output.append("\(section).\(key)=\(value)")
    }
}
print(output.joined(separator: "\n"))
