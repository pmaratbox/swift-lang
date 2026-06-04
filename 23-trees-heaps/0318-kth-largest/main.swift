struct MinHeap {
    private(set) var data: [Int] = []
    var count: Int { data.count }
    var top: Int? { data.first }

    mutating func push(_ value: Int) {
        data.append(value)
        var i = data.count - 1
        while i > 0 {
            let parent = (i - 1) / 2
            if data[parent] <= data[i] { break }
            data.swapAt(parent, i)
            i = parent
        }
    }

    mutating func pop() {
        guard !data.isEmpty else { return }
        data[0] = data[data.count - 1]
        data.removeLast()
        var i = 0
        let n = data.count
        while true {
            let l = 2 * i + 1
            let r = 2 * i + 2
            var smallest = i
            if l < n && data[l] < data[smallest] { smallest = l }
            if r < n && data[r] < data[smallest] { smallest = r }
            if smallest == i { break }
            data.swapAt(i, smallest)
            i = smallest
        }
    }
}

func kthLargest(_ nums: [Int], _ k: Int) -> Int {
    var heap = MinHeap()
    for n in nums {
        heap.push(n)
        if heap.count > k { heap.pop() }
    }
    return heap.top ?? 0
}

print(kthLargest([3, 2, 1, 5, 6, 4], 2))
