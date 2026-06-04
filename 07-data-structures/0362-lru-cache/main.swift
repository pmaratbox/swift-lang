struct LruCache {
    let capacity: Int
    private var store: [Int: Int] = [:]
    private var order: [Int] = []

    init(capacity: Int) { self.capacity = capacity }

    mutating func get(_ key: Int) -> Int {
        guard let value = store[key] else { return -1 }
        touch(key)
        return value
    }

    mutating func put(_ key: Int, _ value: Int) {
        if store[key] != nil {
            store[key] = value
            touch(key)
            return
        }
        if store.count >= capacity, let lru = order.first {
            order.removeFirst()
            store[lru] = nil
        }
        store[key] = value
        order.append(key)
    }

    private mutating func touch(_ key: Int) {
        if let idx = order.firstIndex(of: key) {
            order.remove(at: idx)
        }
        order.append(key)
    }
}

var cache = LruCache(capacity: 2)
cache.put(1, 1)
cache.put(2, 2)
_ = cache.get(1)
cache.put(3, 3)
print("\(cache.get(1)) \(cache.get(2))")
