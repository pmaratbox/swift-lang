func countingSort(_ input: [Int]) -> [Int] {
    guard let maxValue = input.max() else { return [] }
    var counts = [Int](repeating: 0, count: maxValue + 1)
    for value in input { counts[value] += 1 }
    var result = [Int]()
    for value in 0...maxValue {
        result.append(contentsOf: repeatElement(value, count: counts[value]))
    }
    return result
}

let data = [3, 1, 2, 3, 1]
print(countingSort(data).map { String($0) }.joined(separator: " "))
