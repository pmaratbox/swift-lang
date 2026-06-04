func parity(_ n: Int) -> Int {
    n.nonzeroBitCount & 1
}

print("\(parity(7)) \(parity(5))")
