func isLeap(_ y: Int) -> Bool {
    (y % 4 == 0 && y % 100 != 0) || y % 400 == 0
}

func februaryDays(_ y: Int) -> Int {
    isLeap(y) ? 29 : 28
}

print("\(februaryDays(2000)) \(februaryDays(2001))")
