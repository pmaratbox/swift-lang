let n = 10
var isPrime = [Bool](repeating: true, count: n + 1)
isPrime[0] = false
isPrime[1] = false
var i = 2
while i * i <= n {
    if isPrime[i] {
        var j = i * i
        while j <= n {
            isPrime[j] = false
            j += i
        }
    }
    i += 1
}

let primes = (2...n).filter { isPrime[$0] }.map { String($0) }
print(primes.joined(separator: " "))
