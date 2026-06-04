enum Color: String, CaseIterable {
    case RED, GREEN, BLUE
}

let names = Color.allCases.map { String(describing: $0) }
print(names.joined(separator: " "))
