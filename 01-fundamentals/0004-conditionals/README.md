# 0004 — Conditionals

Compare `n` against 10 and print whether it's less, equal, or greater. Swift forbids parentheses around the condition but requires braces around every body, and the condition must be a true `Bool` — there is no implicit conversion from numbers. The value is parsed from a string (`Int("7")!`) rather than written as the literal `7`, because Swift would otherwise warn that the `== 10` and `else` branches can never run once it folds the constant at compile time.

## Run

    swift main.swift
