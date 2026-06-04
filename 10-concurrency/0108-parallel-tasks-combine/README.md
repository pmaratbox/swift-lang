# 0108 — Parallel Tasks Combined

Run two independent tasks that produce 10 and 20 concurrently, then combine (sum) their results into `30`. Swift launches both with `async let` and combines them with a single `await`.

## Run

    swift main.swift
