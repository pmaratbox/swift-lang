# 0003 — Arithmetic & operators

Compute and print the five elementary arithmetic operations on two integers
(`a = 17`, `b = 5`). Swift's `/` between two `Int`s truncates toward zero
(`17 / 5 → 3`); wrap the operands as `Double(a) / Double(b)` for the fractional
quotient, which interpolates as `3.4`. Swift has no implicit numeric
conversions, so the explicit `Double(...)` initializers are required — and a
`Bool` interpolates as lowercase `true`/`false`.

## Run

    swift main.swift
