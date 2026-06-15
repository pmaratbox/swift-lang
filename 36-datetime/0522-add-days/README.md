# 0522 — Add days

Foundation parses the fixed ISO date `2026-06-15` with `ISO8601DateFormatter`,
then a UTC Gregorian `Calendar` performs the date arithmetic: `date(byAdding:)`
adds a `DateComponents(day: 10)` period and the formatter renders the result
back to ISO `yyyy-MM-dd`. The new date is computed by the library, never
hardcoded, and the UTC time zone keeps the output independent of the OS
timezone database.

## Run

    swift main.swift
