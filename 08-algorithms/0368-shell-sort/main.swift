func shellSort(_ input: [Int]) -> [Int] {
    var a = input
    var gap = a.count / 2
    while gap > 0 {
        for i in gap..<a.count {
            let temp = a[i]
            var j = i
            while j >= gap && a[j - gap] > temp {
                a[j] = a[j - gap]
                j -= gap
            }
            a[j] = temp
        }
        gap /= 2
    }
    return a
}

let data = [5, 2, 8, 1, 9, 3]
print(shellSort(data).map { String($0) }.joined(separator: " "))
