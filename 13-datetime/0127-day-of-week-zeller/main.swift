func weekday(year: Int, month: Int, day: Int) -> String {
    var y = year
    var m = month
    if m < 3 {
        m += 12
        y -= 1
    }
    let k = y % 100
    let j = y / 100
    let h = (day + (13 * (m + 1)) / 5 + k + k / 4 + j / 4 + 5 * j) % 7
    // h: 0=Saturday, 1=Sunday, ... 6=Friday
    let names = ["Saturday", "Sunday", "Monday", "Tuesday",
                 "Wednesday", "Thursday", "Friday"]
    return names[h]
}

print(weekday(year: 2000, month: 1, day: 1))
