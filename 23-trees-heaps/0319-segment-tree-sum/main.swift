struct SegmentTree {
    private let n: Int
    private var tree: [Int]

    init(_ values: [Int]) {
        n = values.count
        tree = Array(repeating: 0, count: 2 * n)
        for i in 0..<n { tree[n + i] = values[i] }
        for i in stride(from: n - 1, through: 1, by: -1) {
            tree[i] = tree[2 * i] + tree[2 * i + 1]
        }
    }

    // inclusive range [left, right]
    func query(_ left: Int, _ right: Int) -> Int {
        var l = left + n
        var r = right + n + 1
        var sum = 0
        while l < r {
            if l & 1 == 1 { sum += tree[l]; l += 1 }
            if r & 1 == 1 { r -= 1; sum += tree[r] }
            l /= 2
            r /= 2
        }
        return sum
    }
}

let seg = SegmentTree([1, 2, 3, 4, 5])
print(seg.query(1, 3))
