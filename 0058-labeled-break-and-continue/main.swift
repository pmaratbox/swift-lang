outer: for i in 1...3 {
    for j in 1...3 {
        if j > i {
            continue outer
        }
        if i * j == 4 {
            print("stop at \(i),\(j)")
            break outer
        }
        print("\(i),\(j)")
    }
}
