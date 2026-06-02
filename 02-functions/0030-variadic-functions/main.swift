func total(_ nums: Int...) -> Int {
    return nums.reduce(0, +)
}

print("sum: \(total(1, 2, 3))")
