# 0043 — Function Composition

Compose `inc` (add one) and `twice` (multiply by two) into one function and apply it to `3`, so `inc(twice(3))` prints `7`. `compose` takes two `@escaping` closures (escaping because they're stored in the returned closure) and returns `{ x in f(g(x)) }`. Functions are first-class values in Swift.

## Run

    swift main.swift
