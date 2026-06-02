func inc(_ x: Int) -> Int { x + 1 }
func double(_ x: Int) -> Int { x * 2 }

func apply(_ f: (Int) -> Int, _ x: Int) -> Int { f(x) }

print("inc 5 = \(apply(inc, 5))")
print("double 5 = \(apply(double, 5))")
