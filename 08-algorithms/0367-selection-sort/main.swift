func selectionSort(_ input: [Int]) -> [Int] {
    var a = input
    for i in 0..<a.count {
        var minIndex = i
        for j in (i + 1)..<a.count where a[j] < a[minIndex] {
            minIndex = j
        }
        a.swapAt(i, minIndex)
    }
    return a
}

let data = [5, 1, 4, 2]
print(selectionSort(data).map { String($0) }.joined(separator: " "))
