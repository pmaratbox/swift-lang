# 0019 — Recursion

Define a recursive `factorial(n)` that multiplies `n` by `factorial(n - 1)` until it bottoms out at `1`, then print `factorial(5) = 120`. Swift performs no guaranteed tail-call optimization, so each call uses a stack frame; the underscore in `factorial(_ n:)` drops the argument label, giving the plain `factorial(5)` at the call site. `Int` is 64-bit on this platform.

## Run

    swift main.swift
