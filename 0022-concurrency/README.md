# 0022 — Concurrency

Start two tasks that produce `1` and `2`, let them run concurrently, then join their results and print `sum: 3`. `async let` starts each call as a concurrent child task, and `await a + b` suspends until both complete. This is Swift's *structured concurrency* — child tasks are scoped to their parent — and top-level `await` is allowed in `main.swift`.

## Run

    swift main.swift
