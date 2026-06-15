# 0526 — Add time

Foundation's `Calendar` (Gregorian, fixed UTC) adds a duration to a fixed instant: starting from `2026-06-15T10:00`, `date(byAdding: .minute, value: 90, to:)` yields the new instant, which `DateComponents` formats as `HH:mm` (`11:30`).

## Run

    swift main.swift
