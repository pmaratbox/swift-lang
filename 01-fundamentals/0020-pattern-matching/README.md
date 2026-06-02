# 0020 — Pattern Matching

Match `n` against the literal patterns `1` and `2` with a wildcard fallback, mapping `1`, `2`, and `5` to `one`, `two`, and `many`. Swift's `switch` must be exhaustive — `default` covers everything not listed — and cases do not fall through implicitly (use `fallthrough` to opt in). Cases can match ranges and tuples and bind associated values with `where` guards.

## Run

    swift main.swift
