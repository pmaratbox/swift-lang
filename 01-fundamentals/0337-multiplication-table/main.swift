for i in 1...3 {
    let row = (1...3).map { String(i * $0) }
    print(row.joined(separator: " "))
}
