// Howard Hinnant's days-from-civil algorithm.
func daysFromCivil(_ y: Int, _ m: Int, _ d: Int) -> Int {
    let y = m <= 2 ? y - 1 : y
    let era = (y >= 0 ? y : y - 399) / 400
    let yoe = y - era * 400
    let doy = (153 * (m > 2 ? m - 3 : m + 9) + 2) / 5 + d - 1
    let doe = yoe * 365 + yoe / 4 - yoe / 100 + doy
    return era * 146097 + doe - 719468
}

let diff = daysFromCivil(2000, 12, 31) - daysFromCivil(2000, 1, 1)
print(diff)
