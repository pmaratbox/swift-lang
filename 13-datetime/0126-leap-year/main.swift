func isLeap(_ year: Int) -> Bool {
    year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
}

let result = [2000, 1900, 2024].map { isLeap($0) ? "yes" : "no" }
print(result.joined(separator: " "))
