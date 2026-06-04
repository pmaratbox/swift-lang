struct MultisetCount {
    private var counts: [Int: Int] = [:]

    mutating func add(_ value: Int) {
        counts[value, default: 0] += 1
    }

    mutating func remove(_ value: Int) {
        guard let current = counts[value] else { return }
        if current <= 1 {
            counts[value] = nil
        } else {
            counts[value] = current - 1
        }
    }

    func count(_ value: Int) -> Int {
        counts[value, default: 0]
    }
}

var multiset = MultisetCount()
multiset.add(1)
multiset.add(1)
multiset.add(2)
let before = multiset.count(1)
multiset.remove(1)
let after = multiset.count(1)
print("\(before) \(after)")
