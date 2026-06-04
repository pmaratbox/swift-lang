import Foundation

func newtonSqrt(_ n: Double) -> Double {
    var x = n
    while true {
        let next = x - (x * x - n) / (2 * x)
        if abs(next - x) < 1e-12 { return next }
        x = next
    }
}

print(String(format: "%.4f", newtonSqrt(2)))
