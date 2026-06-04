struct MinHeap {
    private var items: [Int] = []

    var isEmpty: Bool { items.isEmpty }

    mutating func push(_ value: Int) {
        items.append(value)
        var i = items.count - 1
        while i > 0 {
            let parent = (i - 1) / 2
            if items[i] < items[parent] {
                items.swapAt(i, parent)
                i = parent
            } else {
                break
            }
        }
    }

    mutating func pop() -> Int? {
        guard !items.isEmpty else { return nil }
        let top = items[0]
        let last = items.removeLast()
        if !items.isEmpty {
            items[0] = last
            var i = 0
            let n = items.count
            while true {
                let left = 2 * i + 1
                let right = 2 * i + 2
                var smallest = i
                if left < n && items[left] < items[smallest] { smallest = left }
                if right < n && items[right] < items[smallest] { smallest = right }
                if smallest == i { break }
                items.swapAt(i, smallest)
                i = smallest
            }
        }
        return top
    }
}

var heap = MinHeap()
for value in [3, 1, 2] {
    heap.push(value)
}

var out: [Int] = []
while let value = heap.pop() {
    out.append(value)
}
print(out.map(String.init).joined(separator: " "))
