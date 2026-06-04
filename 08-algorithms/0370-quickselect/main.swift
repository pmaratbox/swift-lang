func quickselect(_ input: [Int], _ k: Int) -> Int {
    var a = input
    var lo = 0
    var hi = a.count - 1
    let target = k - 1
    while lo < hi {
        let pivot = a[hi]
        var i = lo
        for j in lo..<hi where a[j] < pivot {
            a.swapAt(i, j)
            i += 1
        }
        a.swapAt(i, hi)
        if i == target { return a[i] }
        else if i < target { lo = i + 1 }
        else { hi = i - 1 }
    }
    return a[lo]
}

let data = [7, 10, 4, 3, 20, 15]
print(quickselect(data, 3))
