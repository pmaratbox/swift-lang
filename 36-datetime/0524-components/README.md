# 0524 — Date components

Parse the fixed date `2026-06-15` with Foundation's `ISO8601DateFormatter`, then extract the year, month, and day using a Gregorian `Calendar` (pinned to UTC) via `dateComponents(_:from:)`. Each value is printed on its own line: `2026`, `6`, `15`.

## Run

    swift main.swift
