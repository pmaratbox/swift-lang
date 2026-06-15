# 0525 — Weekday

Foundation parses the fixed ISO date `2026-06-15` with `ISO8601DateFormatter`,
then a UTC Gregorian `Calendar` extracts the `.weekday` component. Swift's
`Calendar` numbers weekdays Sunday-based (1=Sun .. 7=Sat), so the value is
converted to ISO weekday numbering (Mon=1 .. Sun=7) with `(wd + 5) % 7 + 1`.
The weekday is computed by the library, never hardcoded, and the UTC time zone
keeps the result independent of the OS timezone database.

## Run

    swift main.swift
