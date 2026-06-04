let a = "abcd"
let b = "cdab"
let isRotation = a.count == b.count && (a + a).contains(b)
print(isRotation ? "yes" : "no")
