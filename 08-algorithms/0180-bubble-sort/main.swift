var a = [5, 1, 4, 2, 8]
for i in 0..<a.count {
    for j in 0..<(a.count - 1 - i) where a[j] > a[j + 1] {
        a.swapAt(j, j + 1)
    }
}
print(a.map(String.init).joined(separator: " "))
