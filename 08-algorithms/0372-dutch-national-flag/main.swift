func dutchNationalFlag(_ input: [Int]) -> [Int] {
    var a = input
    var low = 0
    var mid = 0
    var high = a.count - 1
    while mid <= high {
        switch a[mid] {
        case 0:
            a.swapAt(low, mid)
            low += 1
            mid += 1
        case 1:
            mid += 1
        default:
            a.swapAt(mid, high)
            high -= 1
        }
    }
    return a
}

let data = [2, 0, 2, 1, 1, 0]
print(dutchNationalFlag(data).map { String($0) }.joined(separator: " "))
