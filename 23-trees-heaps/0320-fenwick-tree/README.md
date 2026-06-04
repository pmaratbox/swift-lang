# 0320 — Fenwick Tree Prefix Sum

Build a Fenwick (BIT) tree over [1,2,3,4,5] and query the prefix sum of the first 4 elements, printing `10`. Swift uses the `i & (-i)` low-bit trick inside a `struct` for both update and prefix-sum walks.

## Run

    swift main.swift
