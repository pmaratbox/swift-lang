let total = 10 * 60 + 45 + 90
let hours = (total / 60) % 24
let minutes = total % 60
func pad(_ n: Int) -> String {
    n < 10 ? "0\(n)" : "\(n)"
}
print("\(pad(hours)):\(pad(minutes))")
