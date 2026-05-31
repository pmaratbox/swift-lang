func first<T>(_ items: [T]) -> T {
    items[0]
}

let ints = [1, 2, 3]
let strs = ["a", "b", "c"]

print("first int: \(first(ints))")
print("first string: \(first(strs))")
