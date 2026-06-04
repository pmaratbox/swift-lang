let words = ["a", "bbb", "cc"]
let longest = words.max { $0.count < $1.count }!
print(longest)
