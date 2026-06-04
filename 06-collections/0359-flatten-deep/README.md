# 0359 — Flatten Deeply

Flatten the arbitrarily nested structure [1,[2,[3,4]],5] into `1 2 3 4 5`. Swift models the nesting with an `indirect enum` and recurses via `flatMap`.

## Run

    swift main.swift
