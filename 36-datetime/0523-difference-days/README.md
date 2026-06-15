# 0523 — Difference in days

Foundation parses two fixed ISO dates with `ISO8601DateFormatter` and a Gregorian `Calendar` pinned to UTC computes the whole-day span between 2026-06-15 and 2026-07-15 via `dateComponents(_:from:to:)`, printing `30`.

## Run

    swift main.swift
