func counter() -> () -> Int {
    var count = 0
    return {
        count += 1
        return count
    }
}

let next = counter()
print("count: \(next())")
print("count: \(next())")
