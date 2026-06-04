let xs = [1, 2, 3]

let left = xs.reduce(0) { acc, x in acc - x }
let right = xs.reversed().reduce(0) { acc, x in x - acc }

print("\(left) \(right)")
