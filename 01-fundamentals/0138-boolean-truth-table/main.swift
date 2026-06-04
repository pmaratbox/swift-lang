let rows = [(true, true), (true, false), (false, true), (false, false)]

for (a, b) in rows {
    print("\(a) \(b) \(a && b) \(a || b) \(a != b)")
}
