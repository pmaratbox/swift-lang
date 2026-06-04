# 0148 — Parse or Default

Parse "42" to 42 and "x" (invalid) to a default 0, printing `42 0`. Swift's failable `Int(_:)` returns an `Optional`, and the nil-coalescing operator `??` supplies the default.

## Run

    swift main.swift
