func classify(_ n: Int) -> String {
    if n < 0 { return "negative" }
    if n == 0 { return "zero" }
    return "positive"
}

for n in [-1, 0, 5] {
    print(classify(n))
}
