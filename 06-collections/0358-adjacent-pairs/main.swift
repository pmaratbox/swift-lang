let nums = [1, 2, 3, 4]

let pairs = zip(nums, nums.dropFirst()).map { "\($0),\($1)" }
print(pairs.joined(separator: " "))
