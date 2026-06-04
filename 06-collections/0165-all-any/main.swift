let numbers = [2, 4, 6]
let allEven = numbers.allSatisfy { $0 % 2 == 0 }
let anyOdd = numbers.contains { $0 % 2 != 0 }
print("\(allEven ? "yes" : "no") \(anyOdd ? "yes" : "no")")
