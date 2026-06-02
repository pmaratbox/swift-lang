# 0073 — Caesar Cipher

Encrypt `abc` with a Caesar cipher shifting each letter forward by `1` (wrapping within the alphabet) and print the result: `bcd`. `asciiValue` gives each letter's code; the shift wraps with `% 26` relative to `a`, then `UnicodeScalar` maps back to a `Character`.

## Run

    swift main.swift
