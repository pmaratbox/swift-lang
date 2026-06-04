var n = 60
var factors: [Int] = []
while n % 2 == 0 {
    factors.append(2)
    n /= 2
}
var f = 3
while f * f <= n {
    while n % f == 0 {
        factors.append(f)
        n /= f
    }
    f += 2
}
if n > 1 { factors.append(n) }
print(factors.map(String.init).joined(separator: " "))
