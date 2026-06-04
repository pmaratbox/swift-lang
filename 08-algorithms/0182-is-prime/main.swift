func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    var i = 2
    while i * i <= n {
        if n % i == 0 { return false }
        i += 1
    }
    return true
}
let parts = [7, 9].map { isPrime($0) ? "yes" : "no" }
print(parts.joined(separator: " "))
