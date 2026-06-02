# 0006 — Functions

Define `add(a, b)` returning their sum, call it with `3` and `4`, and print
the result. The signature form is `func name(params) -> ReturnType`; a
single-expression body returns its value implicitly, so no `return` is needed.
The `_` before each parameter suppresses the argument label, letting callers
write `add(3, 4)` instead of `add(a: 3, b: 4)`. String interpolation
(`\(...)`) embeds the result in the output.

## Run

    swift main.swift
