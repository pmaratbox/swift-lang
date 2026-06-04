func lowerBound(_ a: [Int], _ target: Int) -> Int {
    var lo = 0
    var hi = a.count
    while lo < hi {
        let mid = (lo + hi) / 2
        if a[mid] < target { lo = mid + 1 } else { hi = mid }
    }
    return lo
}

func upperBound(_ a: [Int], _ target: Int) -> Int {
    var lo = 0
    var hi = a.count
    while lo < hi {
        let mid = (lo + hi) / 2
        if a[mid] <= target { lo = mid + 1 } else { hi = mid }
    }
    return lo
}

let data = [1, 3, 5, 5, 7]
print("\(lowerBound(data, 5)) \(upperBound(data, 5))")
