# 0082 — Chunk a List

Split the list `1, 2, 3, 4, 5, 6, 7` into chunks of `3` and print each chunk on its own line: `1 2 3`, `4 5 6`, `7`. `stride(from:to:by:)` steps the start index, and slicing up to `min(i+size, count)` clamps the final chunk (the stdlib has no chunk method).

## Run

    swift main.swift
