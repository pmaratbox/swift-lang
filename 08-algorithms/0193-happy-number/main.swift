func isHappy(_ n: Int) -> Bool {
    var n = n
    var seen: Set<Int> = []
    while n != 1 && !seen.contains(n) {
        seen.insert(n)
        var sum = 0
        var m = n
        while m > 0 {
            let d = m % 10
            sum += d * d
            m /= 10
        }
        n = sum
    }
    return n == 1
}
print(isHappy(19) ? "yes" : "no")
