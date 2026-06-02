# 0059 — Group By

Group the words `one`, `two`, `three` by their length and print each length with its words, in ascending order of length: `3:[one,two] 5:[three]`. `Dictionary(grouping: words, by: { $0.count })` builds the buckets in one call; `keys.sorted()` orders them for ascending output.

## Run

    swift main.swift
