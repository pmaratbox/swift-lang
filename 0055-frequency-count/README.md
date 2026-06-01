# 0055 — Frequency Count

Count how many times each letter appears in `banana` and print the per-letter counts in alphabetical order: `a:3 b:1 n:2`. The `counts[ch, default: 0] += 1` subscript initializes a missing key to zero before incrementing; `sorted { $0.key < $1.key }` orders the dictionary for output.

## Run

    swift main.swift
