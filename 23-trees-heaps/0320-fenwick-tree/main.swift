struct FenwickTree {
    private var tree: [Int]

    init(_ values: [Int]) {
        tree = Array(repeating: 0, count: values.count + 1)
        for (i, v) in values.enumerated() {
            update(i + 1, v)
        }
    }

    mutating func update(_ index: Int, _ delta: Int) {
        var i = index
        while i < tree.count {
            tree[i] += delta
            i += i & (-i)
        }
    }

    // prefix sum of first `count` elements (1..count)
    func prefixSum(_ count: Int) -> Int {
        var i = count
        var sum = 0
        while i > 0 {
            sum += tree[i]
            i -= i & (-i)
        }
        return sum
    }
}

let fenwick = FenwickTree([1, 2, 3, 4, 5])
print(fenwick.prefixSum(4))
