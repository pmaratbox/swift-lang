func permute(_ items: [Int], _ prefix: [Int]) {
    if items.isEmpty {
        print(prefix.map(String.init).joined(separator: " "))
        return
    }
    for (i, x) in items.enumerated() {
        var rest = items
        rest.remove(at: i)
        permute(rest, prefix + [x])
    }
}
permute([1, 2, 3], [])
