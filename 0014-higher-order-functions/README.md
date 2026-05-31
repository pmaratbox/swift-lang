# 0014 — Higher-Order Functions

Write `apply(f, x)` that calls the function `f` on `x`, then pass it two
different functions, `inc` and `double`. Functions are first-class values in
Swift; the parameter type `(Int) -> Int` names a closure that takes and returns
an `Int`, and a named `func` can be passed directly wherever such a value is
expected. Single-expression bodies return their value implicitly, so no `return`
keyword is needed.

## Run

    swift main.swift
