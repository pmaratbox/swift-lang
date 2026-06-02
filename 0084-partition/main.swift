let nums = [1, 2, 3, 4, 5, 6]
let evens = nums.filter { $0 % 2 == 0 }
let odds = nums.filter { $0 % 2 != 0 }
print("evens: " + evens.map { String($0) }.joined(separator: " "))
print("odds: " + odds.map { String($0) }.joined(separator: " "))
