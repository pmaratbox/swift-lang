func anagram(_ a: String, _ b: String) -> Bool {
    return a.sorted() == b.sorted()
}

let pairs = [("listen", "silent"), ("hello", "world")]
for (a, b) in pairs {
    print("\(a)/\(b): \(anagram(a, b) ? "yes" : "no")")
}
