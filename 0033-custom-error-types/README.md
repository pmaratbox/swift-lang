# 0033 — Custom Error Types

Define a custom error, raise it from a `check` that rejects values over `100`, catch it for the input `200`, and print `error: value too large`. Any type conforming to the empty `Error` protocol can be thrown — here a `struct` carrying a `message`. A throwing function is marked `throws`, calls use `try`, and `do`/`catch let e as TooLargeError` matches the concrete type.

## Run

    swift main.swift
