func applyTwice<T>(_ f: (T) -> T, _ x: T) -> T {
    f(f(x))
}

func inc(_ n: Int) -> Int { n + 1 }

print(applyTwice(inc, 3))
