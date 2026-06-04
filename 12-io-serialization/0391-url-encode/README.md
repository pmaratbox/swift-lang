# 0391 — URL Percent-Encode

Percent-encode the string "a b&c" to `a%20b%26c`. Keep unreserved characters and encode the rest as `%` plus uppercase hex of the byte value.

## Run

    swift main.swift
