# 0528 — Unix timestamp

Using Foundation's `ISO8601DateFormatter` we parse the fixed UTC instant
`2026-06-15T00:00:00Z` into a `Date`, then read `Date.timeIntervalSince1970` to
obtain the Unix timestamp — the number of whole seconds elapsed since the epoch
`1970-01-01T00:00:00Z`. The parser is pinned to the `UTC` time zone so the
result never depends on the host's locale or timezone database, and the value is
computed by the library rather than hardcoded.

## Run

    swift main.swift
