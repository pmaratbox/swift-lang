# 0012 — Enums

Define a `Color` enum (`red`, `green`, `blue`) and print the integer value of
`green` (1) and `blue` (2). A Swift `enum` is its own type whose cases are
distinct values, not integers; giving it an `Int` raw-value type assigns each
case a backing number (auto-incrementing from the previous), read via
`.rawValue`.

## Run

    swift main.swift
