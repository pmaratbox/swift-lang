func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var result: [Int] = []
    var i = 0
    var j = 0
    while i < left.count && j < right.count {
        if left[i] <= right[j] {
            result.append(left[i])
            i += 1
        } else {
            result.append(right[j])
            j += 1
        }
    }
    result.append(contentsOf: left[i...])
    result.append(contentsOf: right[j...])
    return result
}

func mergeSort(_ items: [Int]) -> [Int] {
    if items.count <= 1 { return items }
    let mid = items.count / 2
    return merge(mergeSort(Array(items[..<mid])), mergeSort(Array(items[mid...])))
}

let data = [3, 1, 4, 1, 5, 2]
print(mergeSort(data).map { String($0) }.joined(separator: " "))
