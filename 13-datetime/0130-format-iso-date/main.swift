let y = 2026
let m = 6
let d = 4

let mm = String(m).count == 1 ? "0\(m)" : "\(m)"
let dd = String(d).count == 1 ? "0\(d)" : "\(d)"
print("\(y)-\(mm)-\(dd)")
