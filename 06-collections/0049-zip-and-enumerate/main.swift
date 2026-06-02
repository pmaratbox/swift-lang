let letters = ["a", "b", "c"]
let nums = [1, 2, 3]
let pairs = zip(letters, nums).map { "\($0)=\($1)" }
print(pairs.joined(separator: " "))
