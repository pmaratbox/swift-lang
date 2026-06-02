# 0011 — Error Handling

Write a `divide(a, b)` that throws on a zero divisor, then call it on `10 / 2`
(prints the result) and `10 / 0` (prints an error). Swift marks a fallible
function with `throws` and signals failure by throwing a value conforming to the
`Error` protocol (here a custom `DivisionError` enum); `try` calls it, `do` /
`catch` handles the case, and `try!` asserts a call cannot fail.

## Run

    swift main.swift
