var a = [5, 1, 4, 2, 8]
for i in 1..<a.count {
    let key = a[i]
    var j = i - 1
    while j >= 0 && a[j] > key {
        a[j + 1] = a[j]
        j -= 1
    }
    a[j + 1] = key
}
print(a.map(String.init).joined(separator: " "))
