func check(_ condition: Bool, _ message: String) {
    if !condition {
        fatalError("assertion failed: \(message)")
    }
}

check(1 + 1 == 2, "1+1==2")
check("ab" + "c" == "abc", "string concat")
check([1, 2, 3].count == 3, "array count")

print("all passed")
