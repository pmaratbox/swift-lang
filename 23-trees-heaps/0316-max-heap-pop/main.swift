struct MaxHeap {
    private var data: [Int] = []

    mutating func push(_ value: Int) {
        data.append(value)
        var i = data.count - 1
        while i > 0 {
            let parent = (i - 1) / 2
            if data[parent] >= data[i] { break }
            data.swapAt(parent, i)
            i = parent
        }
    }

    mutating func pop() -> Int? {
        guard !data.isEmpty else { return nil }
        let top = data[0]
        data[0] = data[data.count - 1]
        data.removeLast()
        var i = 0
        let n = data.count
        while true {
            let l = 2 * i + 1
            let r = 2 * i + 2
            var largest = i
            if l < n && data[l] > data[largest] { largest = l }
            if r < n && data[r] > data[largest] { largest = r }
            if largest == i { break }
            data.swapAt(i, largest)
            i = largest
        }
        return top
    }
}

var heap = MaxHeap()
for v in [3, 1, 4, 1, 5] { heap.push(v) }
var out: [Int] = []
for _ in 0..<3 {
    if let x = heap.pop() { out.append(x) }
}
print(out.map(String.init).joined(separator: " "))
