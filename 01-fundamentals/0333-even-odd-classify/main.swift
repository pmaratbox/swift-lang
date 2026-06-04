let labels = [1, 2, 3, 4].map { $0 % 2 == 0 ? "even" : "odd" }
print(labels.joined(separator: " "))
