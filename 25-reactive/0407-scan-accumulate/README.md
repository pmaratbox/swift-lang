# 0407 — Scan (Running Fold)

Implement a scan operator that emits the running accumulation; produce the running sums of 1, 2, 3, 4. Swift closures capture the mutable `state` var, so each `next` folds and re-emits idiomatically.

## Run

    swift main.swift
