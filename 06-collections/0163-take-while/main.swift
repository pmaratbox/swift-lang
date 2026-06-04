let numbers = [1, 2, 3, 4, 1]
let taken = numbers.prefix { $0 < 3 }
print(taken.map(String.init).joined(separator: " "))
