func quicksort(_ items: [Int]) -> [Int] {
    if items.count <= 1 { return items }
    let pivot = items[0]
    let rest = items.dropFirst()
    let less = rest.filter { $0 < pivot }
    let greater = rest.filter { $0 >= pivot }
    return quicksort(less) + [pivot] + quicksort(greater)
}

let data = [3, 1, 4, 1, 5, 2]
print(quicksort(data).map { String($0) }.joined(separator: " "))
