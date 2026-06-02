let nums = [1, 2, 2, 3, 1]
var seen = Set<Int>()
let unique = nums.filter { seen.insert($0).inserted }
print(unique.map { String($0) }.joined(separator: " "))
