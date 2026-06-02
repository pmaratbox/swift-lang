func inc(_ n: inout Int) {
    n += 1
}

var n = 1
print("before: \(n)")
inc(&n)
print("after: \(n)")
