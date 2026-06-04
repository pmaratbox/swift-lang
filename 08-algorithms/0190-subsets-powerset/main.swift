let items = [1, 2, 3]
for mask in 0..<(1 << items.count) {
    let subset = items.indices.filter { mask & (1 << $0) != 0 }.map { items[$0] }
    if subset.isEmpty {
        print("{}")
    } else {
        print(subset.map(String.init).joined(separator: " "))
    }
}
