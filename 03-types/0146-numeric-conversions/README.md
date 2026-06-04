# 0146 — Numeric Conversions

Truncate 3.9 to the int 3 and widen the int 3 to the float 3.0, printing `3 3.0`. Swift requires explicit conversions: `Int(_:)` truncates toward zero and `Double(_:)` widens, here formatted to one decimal via Foundation's `String(format:)`.

## Run

    swift main.swift
