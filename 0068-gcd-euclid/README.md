# 0068 — GCD (Euclid)

Compute the greatest common divisor of `48` and `36` with Euclid's algorithm (repeatedly replace the pair with `(b, a % b)` until the remainder is zero) and print it: `12`. Shadowing `var a`/`var b` makes the parameters mutable, and the tuple assignment `(a, b) = (b, a % b)` advances them simultaneously.

## Run

    swift main.swift
