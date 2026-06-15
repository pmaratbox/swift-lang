# 0521 — Parse & format

Use Foundation's `ISO8601DateFormatter` (with `.withFullDate`, pinned to UTC) to parse the fixed ISO date `2026-06-15` into a `Date` and format it back to ISO `yyyy-MM-dd`. The value is computed by the library round-trip, not hardcoded, and the output is independent of the local timezone database.

## Run

    swift main.swift
