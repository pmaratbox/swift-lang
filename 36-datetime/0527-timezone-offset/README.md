# 0527 — Timezone offset

Foundation parses the fixed UTC instant `2026-06-15T12:00:00Z` with `ISO8601DateFormatter`, then a Gregorian `Calendar` whose `TimeZone(secondsFromGMT:)` is a fixed `+05:00` offset (not a named zone / OS tzdata) reads the local hour component, yielding `17`.

## Run

    swift main.swift
