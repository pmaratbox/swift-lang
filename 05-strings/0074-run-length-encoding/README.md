# 0074 — Run-Length Encoding

Run-length encode the string `aaabbc` (each run of a repeated character becomes the character followed by its count), printing `a3b2c1`. `Array(text)` gives indexable `Character`s; the inner loop counts a run and string interpolation appends `char + count`.

## Run

    swift main.swift
