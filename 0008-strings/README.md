# 0008 — Strings

Given `name = "world"`, print a greeting, the name in uppercase, and its
length. `\(...)` interpolates values into a string literal. `.uppercased()` is a
non-mutating method that returns a new string, leaving the `let` original
unchanged. `.count` counts extended
grapheme clusters (user-perceived characters), not UTF-8 bytes or code units,
so it stays correct for emoji and combining marks.

## Run

    swift main.swift
