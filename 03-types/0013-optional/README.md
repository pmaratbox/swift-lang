# 0013 — Optional

Hold one value that is present (`42`) and one that is absent, then print each
with a fallback of `-1` when absent. `Int?` is sugar for `Optional<Int>`, an
enum that is either `.some(value)` or `nil`. The nil-coalescing operator `??`
unwraps the value or substitutes the fallback when it is `nil`, leaving a
legitimate `0` untouched.

## Run

    swift main.swift
