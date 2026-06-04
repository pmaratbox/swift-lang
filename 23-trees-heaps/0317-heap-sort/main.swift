func siftDown(_ a: inout [Int], _ start: Int, _ end: Int) {
    var root = start
    while 2 * root + 1 < end {
        let l = 2 * root + 1
        let r = 2 * root + 2
        var swapIdx = root
        if a[swapIdx] < a[l] { swapIdx = l }
        if r < end && a[swapIdx] < a[r] { swapIdx = r }
        if swapIdx == root { return }
        a.swapAt(root, swapIdx)
        root = swapIdx
    }
}

func heapSort(_ input: [Int]) -> [Int] {
    var a = input
    let n = a.count
    for start in stride(from: n / 2 - 1, through: 0, by: -1) {
        siftDown(&a, start, n)
    }
    for end in stride(from: n - 1, through: 1, by: -1) {
        a.swapAt(0, end)
        siftDown(&a, 0, end)
    }
    return a
}

let sorted = heapSort([5, 3, 8, 1, 4])
print(sorted.map(String.init).joined(separator: " "))
