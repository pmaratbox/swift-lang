let monthDays = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let month = 3
let day = 1
let dayOfYear = monthDays[0..<(month - 1)].reduce(0, +) + day
print(dayOfYear)
