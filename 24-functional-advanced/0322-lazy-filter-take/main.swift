let naturals = sequence(first: 1) { $0 + 1 }
let evens = naturals.lazy.filter { $0 % 2 == 0 }
let firstThree = Array(evens.prefix(3))
print(firstThree.map(String.init).joined(separator: " "))
