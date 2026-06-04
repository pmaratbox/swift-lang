# 0118 — Option Map Chaining

Map a function over a present optional (10 -> 12) and an absent one (-> fallback), printing `12 none`. Swift's `Optional.map` applies the closure only when a value is present, and `?? "none"` supplies the fallback for `nil`.

## Run

    swift main.swift
