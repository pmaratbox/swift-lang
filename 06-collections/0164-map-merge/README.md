# 0164 — Merge Maps

Merge {a:1,b:2} and {b:3,c:4} with the right map winning on conflicts, printing `a:1 b:3 c:4`. Swift's `merging(_:uniquingKeysWith:)` resolves conflicts via a closure.

## Run

    swift main.swift
