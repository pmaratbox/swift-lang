# 0352 — ROT13

Apply ROT13 to "hello" (->"uryyb") and ROT13 again to recover "hello", printing `uryyb hello`. Swift maps over `unicodeScalars` to rotate each letter's code point.

## Run

    swift main.swift
